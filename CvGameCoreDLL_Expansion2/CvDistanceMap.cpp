/*	-------------------------------------------------------------------------------------------------------
	� 1991-2012 Take-Two Interactive Software and its subsidiaries.  Developed by Firaxis Games.  
	Sid Meier's Civilization V, Civ, Civilization, 2K Games, Firaxis Games, Take-Two Interactive Software 
	and their respective logos are all trademarks of Take-Two interactive Software, Inc.  
	All other marks and trademarks are the property of their respective owners.  
	All rights reserved. 
	------------------------------------------------------------------------------------------------------- */
#include "CvGameCoreDLLPCH.h"
#include "CvDistanceMap.h"
#include "CvGameCoreUtils.h"

// must be included after all other headers
#include "LintFree.h"

int PACK(int owner, int id) { return (owner & 0xFF)<<24 | (id & 0xFFFFFF); }
int UNPACK_OWNER(int packed) { return packed>>24; }
int UNPACK_ID(int packed) { return (packed & 0xFFFFFF); }

/// Constructor
CvDistanceMap::CvDistanceMap(void)
	: m_ePlayer(NO_PLAYER)
	, m_bArrayAllocated(false)
	, m_bDirty(true)
{
}

/// Destructor
CvDistanceMap::~CvDistanceMap(void)
{
}

void CvDistanceMap::SetPlayer(PlayerTypes ePlayer)
{
	Reset();
	m_ePlayer = ePlayer;
}

void CvDistanceMap::Reset()
{
	m_ePlayer = NO_PLAYER;
	m_vDistance.clear();
	m_vClosestFeature.clear();
	m_bArrayAllocated = false;
	m_bDirty = true;
}

/// Updates the danger plots values to reflect threats across the map
void CvDistanceMap::Update()
{
	const CvMap& map = GC.getMap();
	int nPlots = map.numPlots();

	m_vDistance = std::vector<int>(nPlots,INT_MAX);
	m_vClosestFeature = std::vector<int>(nPlots,0);
	m_bArrayAllocated = true;
		
	// since we know there are very few cities compared to the number of plots,
	// we don't need to do the full distance transform

	for (int i = 0; i < MAX_PLAYERS; i++)
	{
		if (m_ePlayer!=NO_PLAYER && m_ePlayer!=i)
			continue;

		// for each city
		CvPlayer& thisPlayer = GET_PLAYER((PlayerTypes)i);
		int iCityIndex = 0;
		for(CvCity* pLoopCity = thisPlayer.firstCity(&iCityIndex); pLoopCity != NULL; pLoopCity = thisPlayer.nextCity(&iCityIndex))
		{
			CvPlot* pCityPlot = pLoopCity->plot();

			for (int iPlotIndex=0; iPlotIndex<nPlots; iPlotIndex++)
			{
				CvPlot* pPlot = map.plotByIndexUnchecked(iPlotIndex);
				if (pPlot)
				{
					int iDistance = plotDistance( pCityPlot->getX(),pCityPlot->getY(),pPlot->getX(),pPlot->getY() );

					bool bUpdate = (iDistance < m_vDistance[iPlotIndex]);
					
					//in case of equal distance, take care not to prefer the player with the lower ID
					if (iDistance == m_vDistance[iPlotIndex]) 
					{
						PlayerTypes currentOwner = (PlayerTypes) UNPACK_OWNER(m_vClosestFeature[iPlotIndex]);
						CvCity* pCurrentCity = GET_PLAYER(currentOwner).getCity( UNPACK_ID(m_vClosestFeature[iPlotIndex]) );
						bUpdate = (pCurrentCity->getGameTurnFounded() > pLoopCity->getGameTurnFounded());
					}

					if (bUpdate)
					{
						m_vDistance[iPlotIndex] = iDistance;
						m_vClosestFeature[iPlotIndex] = PACK(pLoopCity->getOwner(), pLoopCity->GetID());
					}
				}
			}
		}
	}

	m_bDirty = false;
}

//	-----------------------------------------------------------------------------------------------
void CvDistanceMap::SetDirty()
{
	m_bDirty = true;
}

//	-----------------------------------------------------------------------------------------------
int CvDistanceMap::GetClosestFeatureDistance(const CvPlot& plot)
{
	if (m_bDirty)
		Update();

	if (m_bArrayAllocated)
		return m_vDistance[ GC.getMap().plotNum( plot.getX(), plot.getY() ) ]; 

	return INT_MAX;
}

//	-----------------------------------------------------------------------------------------------
int CvDistanceMap::GetClosestFeatureID(const CvPlot& plot)
{
	if (m_bDirty)
		Update();

	if (m_bArrayAllocated)
		return UNPACK_ID( m_vClosestFeature[ GC.getMap().plotNum( plot.getX(), plot.getY() ) ] );

	return -1;
}

//	-----------------------------------------------------------------------------------------------
int CvDistanceMap::GetClosestFeatureOwner(const CvPlot& plot)
{
	if (m_bDirty)
		Update();

	if (m_bArrayAllocated)
		return UNPACK_OWNER( m_vClosestFeature[ GC.getMap().plotNum( plot.getX(), plot.getY() ) ] );

	return -1;
}
