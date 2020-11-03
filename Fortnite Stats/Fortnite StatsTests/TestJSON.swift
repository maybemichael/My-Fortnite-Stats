//
//  TestJSON.swift
//  Fortnite StatsTests
//
//  Created by Michael McGrath on 8/10/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation

let ninjaStats = """
{
  "accountId": "4735ce91-3292-4caf-8a5b-17789b40f79c",
  "country": "US",
  "avatar": "https://trackercdn.com/legacycdn/fortnite/2B5D1195_small.png",
  "platformId": 103,
  "platformName": "kbm",
  "platformNameLong": "KB/M",
  "epicUserHandle": "Ninja",
  "stats": {
    "p2": {
      "trnRating": {
        "label": "TRN Rating",
        "field": "TRNRating",
        "category": "Rating",
        "valueInt": 1390,
        "value": "1390",
        "rank": 554774,
        "percentile": 9.0,
        "displayValue": "1,390"
      },
      "score": {
        "label": "Score",
        "field": "Score",
        "category": "General",
        "valueInt": 674660,
        "value": "674660",
        "rank": 147558,
        "percentile": 0.1,
        "displayValue": "674,660"
      },
      "top1": {
        "label": "Wins",
        "field": "Top1",
        "category": "Tops",
        "valueInt": 2208,
        "value": "2208",
        "rank": 178,
        "percentile": 0.1,
        "displayValue": "2,208"
      },
      "top3": {
        "label": "Top 3",
        "field": "Top3",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top5": {
        "label": "Top 5",
        "field": "Top5",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top6": {
        "label": "Top 6",
        "field": "Top6",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top10": {
        "label": "Top 10",
        "field": "Top10",
        "category": "Tops",
        "valueInt": 3127,
        "value": "3127",
        "rank": 2860,
        "percentile": 0.1,
        "displayValue": "3,127"
      },
      "top12": {
        "label": "Top 12",
        "field": "Top12",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top25": {
        "label": "Top 25",
        "field": "Top25",
        "category": "Tops",
        "valueInt": 3940,
        "value": "3940",
        "rank": 11862,
        "percentile": 0.1,
        "displayValue": "3,940"
      },
      "kd": {
        "label": "K/d",
        "field": "KD",
        "category": "General",
        "valueDec": 9.59,
        "value": "9.59",
        "rank": 172408,
        "percentile": 0.1,
        "displayValue": "9.59"
      },
      "winRatio": {
        "label": "Win %",
        "field": "WinRatio",
        "category": "General",
        "valueDec": 30.7,
        "value": "30.7",
        "rank": 314555,
        "percentile": 0.3,
        "displayValue": "30.70"
      },
      "matches": {
        "label": "Matches",
        "field": "Matches",
        "category": "General",
        "valueInt": 7181,
        "value": "7181",
        "rank": 185478,
        "percentile": 0.1,
        "displayValue": "7,181"
      },
      "kills": {
        "label": "Kills",
        "field": "Kills",
        "category": "General",
        "valueInt": 47710,
        "value": "47710",
        "rank": 165,
        "percentile": 0.1,
        "displayValue": "47,710"
      },
      "minutesPlayed": {
        "label": "Time Played",
        "field": "MinutesPlayed",
        "category": "General",
        "valueInt": 19485,
        "value": "19485",
        "percentile": 0.1,
        "displayValue": "13d 12h 45m "
      },
      "kpm": {
        "label": "Kills/Min",
        "field": "KPM",
        "category": "General",
        "valueDec": 2.45,
        "value": "2.45",
        "percentile": 29.0,
        "displayValue": "2.45"
      },
      "kpg": {
        "label": "Kills/Match",
        "field": "KPG",
        "category": "General",
        "valueDec": 6.64,
        "value": "6.64",
        "rank": 218891,
        "percentile": 0.1,
        "displayValue": "6.64"
      },
      "avgTimePlayed": {
        "label": "Avg. Match Time",
        "field": "AvgTimePlayed",
        "category": "General",
        "valueDec": 162.8,
        "value": "162.8",
        "percentile": 2.5,
        "displayValue": "2m 42s"
      },
      "scorePerMatch": {
        "label": "Score/Match",
        "field": "ScorePerMatch",
        "category": "General",
        "valueDec": 93.95,
        "value": "93.95",
        "rank": 25932581,
        "percentile": 87.0,
        "displayValue": "93.95"
      },
      "scorePerMin": {
        "label": "Score/Min",
        "field": "ScorePerMin",
        "category": "General",
        "valueDec": 34.62,
        "value": "34.62",
        "percentile": 97.0,
        "displayValue": "34.62"
      }
    },
    "p10": {
      "trnRating": {
        "label": "TRN Rating",
        "field": "TRNRating",
        "category": "Rating",
        "valueInt": 1114,
        "value": "1114",
        "rank": 1906080,
        "percentile": 56.0,
        "displayValue": "1,114"
      },
      "score": {
        "label": "Score",
        "field": "Score",
        "category": "General",
        "valueInt": 1206422,
        "value": "1206422",
        "rank": 37716498,
        "percentile": 0.1,
        "displayValue": "1,206,422"
      },
      "top1": {
        "label": "Wins",
        "field": "Top1",
        "category": "Tops",
        "valueInt": 2652,
        "value": "2652",
        "rank": 30966518,
        "percentile": 0.1,
        "displayValue": "2,652"
      },
      "top3": {
        "label": "Top 3",
        "field": "Top3",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top5": {
        "label": "Top 5",
        "field": "Top5",
        "category": "Tops",
        "valueInt": 3422,
        "value": "3422",
        "rank": 39692997,
        "percentile": 0.1,
        "displayValue": "3,422"
      },
      "top6": {
        "label": "Top 6",
        "field": "Top6",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top10": {
        "label": "Top 10",
        "field": "Top10",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top12": {
        "label": "Top 12",
        "field": "Top12",
        "category": "Tops",
        "valueInt": 4215,
        "value": "4215",
        "rank": 41313200,
        "percentile": 0.1,
        "displayValue": "4,215"
      },
      "top25": {
        "label": "Top 25",
        "field": "Top25",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "kd": {
        "label": "K/d",
        "field": "KD",
        "category": "General",
        "valueDec": 9.07,
        "value": "9.07",
        "rank": 138053,
        "percentile": 0.1,
        "displayValue": "9.07"
      },
      "winRatio": {
        "label": "Win %",
        "field": "WinRatio",
        "category": "General",
        "valueDec": 36.3,
        "value": "36.3",
        "rank": 380410,
        "percentile": 0.2,
        "displayValue": "36.30"
      },
      "matches": {
        "label": "Matches",
        "field": "Matches",
        "category": "General",
        "valueInt": 7303,
        "value": "7303",
        "rank": 46502183,
        "percentile": 0.1,
        "displayValue": "7,303"
      },
      "kills": {
        "label": "Kills",
        "field": "Kills",
        "category": "General",
        "valueInt": 42164,
        "value": "42164",
        "rank": 36547867,
        "percentile": 0.1,
        "displayValue": "42,164"
      },
      "minutesPlayed": {
        "label": "Time Played",
        "field": "MinutesPlayed",
        "category": "General",
        "valueInt": 36898,
        "value": "36898",
        "percentile": 0.1,
        "displayValue": "25d 14h 58m "
      },
      "kpm": {
        "label": "Kills/Min",
        "field": "KPM",
        "category": "General",
        "valueDec": 1.14,
        "value": "1.14",
        "percentile": 47.0,
        "displayValue": "1.14"
      },
      "kpg": {
        "label": "Kills/Match",
        "field": "KPG",
        "category": "General",
        "valueDec": 5.77,
        "value": "5.77",
        "rank": 145890,
        "percentile": 0.1,
        "displayValue": "5.77"
      },
      "avgTimePlayed": {
        "label": "Avg. Match Time",
        "field": "AvgTimePlayed",
        "category": "General",
        "valueDec": 303.15,
        "value": "303.15",
        "percentile": 0.9,
        "displayValue": "5m 3s"
      },
      "scorePerMatch": {
        "label": "Score/Match",
        "field": "ScorePerMatch",
        "category": "General",
        "valueDec": 165.2,
        "value": "165.2",
        "rank": 356708,
        "percentile": 44.0,
        "displayValue": "165.20"
      },
      "scorePerMin": {
        "label": "Score/Min",
        "field": "ScorePerMin",
        "category": "General",
        "valueDec": 32.7,
        "value": "32.7",
        "percentile": 98.0,
        "displayValue": "32.70"
      }
    },
    "p9": {
      "trnRating": {
        "label": "TRN Rating",
        "field": "TRNRating",
        "category": "Rating",
        "valueInt": 1913,
        "value": "1913",
        "rank": 180223,
        "percentile": 6.0,
        "displayValue": "1,913"
      },
      "score": {
        "label": "Score",
        "field": "Score",
        "category": "General",
        "valueInt": 1325330,
        "value": "1325330",
        "rank": 33518,
        "percentile": 0.1,
        "displayValue": "1,325,330"
      },
      "top1": {
        "label": "Wins",
        "field": "Top1",
        "category": "Tops",
        "valueInt": 2744,
        "value": "2744",
        "rank": 736,
        "percentile": 0.1,
        "displayValue": "2,744"
      },
      "top3": {
        "label": "Top 3",
        "field": "Top3",
        "category": "Tops",
        "valueInt": 3239,
        "value": "3239",
        "rank": 3114,
        "percentile": 0.1,
        "displayValue": "3,239"
      },
      "top5": {
        "label": "Top 5",
        "field": "Top5",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top6": {
        "label": "Top 6",
        "field": "Top6",
        "category": "Tops",
        "valueInt": 3815,
        "value": "3815",
        "rank": 11246,
        "percentile": 0.1,
        "displayValue": "3,815"
      },
      "top10": {
        "label": "Top 10",
        "field": "Top10",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top12": {
        "label": "Top 12",
        "field": "Top12",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top25": {
        "label": "Top 25",
        "field": "Top25",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "kd": {
        "label": "K/d",
        "field": "KD",
        "category": "General",
        "valueDec": 9.84,
        "value": "9.84",
        "rank": 103396,
        "percentile": 0.1,
        "displayValue": "9.84"
      },
      "winRatio": {
        "label": "Win %",
        "field": "WinRatio",
        "category": "General",
        "valueDec": 38.0,
        "value": "38",
        "rank": 311956,
        "percentile": 0.2,
        "displayValue": "38.00"
      },
      "matches": {
        "label": "Matches",
        "field": "Matches",
        "category": "General",
        "valueInt": 7212,
        "value": "7212",
        "rank": 186049,
        "percentile": 0.1,
        "displayValue": "7,212"
      },
      "kills": {
        "label": "Kills",
        "field": "Kills",
        "category": "General",
        "valueInt": 43971,
        "value": "43971",
        "rank": 1117,
        "percentile": 0.1,
        "displayValue": "43,971"
      },
      "minutesPlayed": {
        "label": "Time Played",
        "field": "MinutesPlayed",
        "category": "General",
        "valueInt": 35082,
        "value": "35082",
        "percentile": 0.1,
        "displayValue": "24d 8h 42m "
      },
      "kpm": {
        "label": "Kills/Min",
        "field": "KPM",
        "category": "General",
        "valueDec": 1.25,
        "value": "1.25",
        "percentile": 46.0,
        "displayValue": "1.25"
      },
      "kpg": {
        "label": "Kills/Match",
        "field": "KPG",
        "category": "General",
        "valueDec": 6.1,
        "value": "6.1",
        "rank": 144111,
        "percentile": 0.1,
        "displayValue": "6.10"
      },
      "avgTimePlayed": {
        "label": "Avg. Match Time",
        "field": "AvgTimePlayed",
        "category": "General",
        "valueDec": 291.86,
        "value": "291.86",
        "percentile": 0.9,
        "displayValue": "4m 51s"
      },
      "scorePerMatch": {
        "label": "Score/Match",
        "field": "ScorePerMatch",
        "category": "General",
        "valueDec": 183.77,
        "value": "183.77",
        "rank": 11144408,
        "percentile": 52.0,
        "displayValue": "183.77"
      },
      "scorePerMin": {
        "label": "Score/Min",
        "field": "ScorePerMin",
        "category": "General",
        "valueDec": 37.78,
        "value": "37.78",
        "percentile": 98.0,
        "displayValue": "37.78"
      }
    },
    "ltm": {
      "score": {
        "label": "Score",
        "field": "Score",
        "category": "General",
        "valueInt": 53315,
        "value": "53315",
        "rank": 41751351,
        "percentile": 40.0,
        "displayValue": "53,315"
      },
      "top1": {
        "label": "Wins",
        "field": "Top1",
        "category": "Tops",
        "valueInt": 157,
        "value": "157",
        "rank": 32814117,
        "percentile": 0.4,
        "displayValue": "157"
      },
      "top3": {
        "label": "Top 3",
        "field": "Top3",
        "category": "Tops",
        "valueInt": 84,
        "value": "84",
        "rank": 33515911,
        "percentile": 3.2,
        "displayValue": "84"
      },
      "top5": {
        "label": "Top 5",
        "field": "Top5",
        "category": "Tops",
        "valueInt": 24,
        "value": "24",
        "rank": 31241903,
        "percentile": 10.0,
        "displayValue": "24"
      },
      "top6": {
        "label": "Top 6",
        "field": "Top6",
        "category": "Tops",
        "valueInt": 101,
        "value": "101",
        "rank": 36741174,
        "percentile": 8.0,
        "displayValue": "101"
      },
      "top10": {
        "label": "Top 10",
        "field": "Top10",
        "category": "Tops",
        "valueInt": 79,
        "value": "79",
        "rank": 24141613,
        "percentile": 0.2,
        "displayValue": "79"
      },
      "top12": {
        "label": "Top 12",
        "field": "Top12",
        "category": "Tops",
        "valueInt": 30,
        "value": "30",
        "rank": 35683241,
        "percentile": 21.0,
        "displayValue": "30"
      },
      "top25": {
        "label": "Top 25",
        "field": "Top25",
        "category": "Tops",
        "valueInt": 91,
        "value": "91",
        "rank": 29745478,
        "percentile": 0.9,
        "displayValue": "91"
      },
      "kd": {
        "label": "K/d",
        "field": "KD",
        "category": "General",
        "valueDec": 10.78,
        "value": "10.78",
        "rank": 6535,
        "percentile": 0.5,
        "displayValue": "10.78"
      },
      "winRatio": {
        "label": "Win %",
        "field": "WinRatio",
        "category": "General",
        "valueDec": 33.5,
        "value": "33.5",
        "rank": 32813342,
        "percentile": 0.4,
        "displayValue": "33.50"
      },
      "matches": {
        "label": "Matches",
        "field": "Matches",
        "category": "General",
        "valueInt": 468,
        "value": "468",
        "rank": 47481904,
        "percentile": 33.0,
        "displayValue": "468"
      },
      "kills": {
        "label": "Kills",
        "field": "Kills",
        "category": "General",
        "valueInt": 3353,
        "value": "3353",
        "rank": 34790873,
        "percentile": 6.0,
        "displayValue": "3,353"
      },
      "minutesPlayed": {
        "label": "Time Played",
        "field": "MinutesPlayed",
        "category": "General",
        "valueInt": 1216,
        "value": "1216",
        "percentile": 45.0,
        "displayValue": "20h 16m "
      },
      "kpm": {
        "label": "Kills/Min",
        "field": "KPM",
        "category": "General",
        "valueDec": 2.76,
        "value": "2.76",
        "percentile": 1.8,
        "displayValue": "2.76"
      },
      "kpg": {
        "label": "Kills/Match",
        "field": "KPG",
        "category": "General",
        "valueDec": 7.16,
        "value": "7.16",
        "rank": 5432,
        "percentile": 1.6,
        "displayValue": "7.16"
      },
      "avgTimePlayed": {
        "label": "Avg. Match Time",
        "field": "AvgTimePlayed",
        "category": "General",
        "valueDec": 155.9,
        "value": "155.9",
        "percentile": 75.0,
        "displayValue": "2m 35s"
      },
      "scorePerMatch": {
        "label": "Score/Match",
        "field": "ScorePerMatch",
        "category": "General",
        "valueDec": 113.92,
        "value": "113.92",
        "rank": 2732156,
        "percentile": 65.0,
        "displayValue": "113.92"
      },
      "scorePerMin": {
        "label": "Score/Min",
        "field": "ScorePerMin",
        "category": "General",
        "valueDec": 43.84,
        "value": "43.84",
        "percentile": 16.0,
        "displayValue": "43.84"
      }
    },
    "curr_p2": {
      "trnRating": {
        "label": "TRN Rating",
        "field": "TRNRating",
        "category": "Rating",
        "valueInt": 1390,
        "value": "1390",
        "rank": 554774,
        "displayValue": "1,390"
      },
      "score": {
        "label": "Score",
        "field": "Score",
        "category": "General",
        "valueInt": 865,
        "value": "865",
        "rank": 5343422,
        "displayValue": "865"
      },
      "top1": {
        "label": "Wins",
        "field": "Top1",
        "category": "Tops",
        "valueInt": 1,
        "value": "1",
        "rank": 2387982,
        "displayValue": "1"
      },
      "top3": {
        "label": "Top 3",
        "field": "Top3",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top5": {
        "label": "Top 5",
        "field": "Top5",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top6": {
        "label": "Top 6",
        "field": "Top6",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top10": {
        "label": "Top 10",
        "field": "Top10",
        "category": "Tops",
        "valueInt": 1,
        "value": "1",
        "rank": 4939347,
        "displayValue": "1"
      },
      "top12": {
        "label": "Top 12",
        "field": "Top12",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top25": {
        "label": "Top 25",
        "field": "Top25",
        "category": "Tops",
        "valueInt": 1,
        "value": "1",
        "rank": 5446219,
        "displayValue": "1"
      },
      "kd": {
        "label": "K/d",
        "field": "KD",
        "category": "General",
        "valueDec": 14.0,
        "value": "14",
        "rank": 6051,
        "displayValue": "14.00"
      },
      "winRatio": {
        "label": "Win %",
        "field": "WinRatio",
        "category": "General",
        "valueDec": 100.0,
        "value": "100",
        "rank": 21444,
        "displayValue": "100.00"
      },
      "matches": {
        "label": "Matches",
        "field": "Matches",
        "category": "General",
        "valueInt": 1,
        "value": "1",
        "rank": 5721944,
        "displayValue": "1"
      },
      "kills": {
        "label": "Kills",
        "field": "Kills",
        "category": "General",
        "valueInt": 14,
        "value": "14",
        "rank": 4681463,
        "displayValue": "14"
      },
      "minutesPlayed": {
        "label": "Time Played",
        "field": "MinutesPlayed",
        "category": "General",
        "valueInt": 22,
        "value": "22",
        "displayValue": "22m "
      },
      "kpm": {
        "label": "Kills/Min",
        "field": "KPM",
        "category": "General",
        "valueDec": 0.64,
        "value": "0.64",
        "displayValue": "0.64"
      },
      "kpg": {
        "label": "Kills/Match",
        "field": "KPG",
        "category": "General",
        "valueDec": 14.0,
        "value": "14",
        "rank": 16015,
        "displayValue": "14.00"
      },
      "avgTimePlayed": {
        "label": "Avg. Match Time",
        "field": "AvgTimePlayed",
        "category": "General",
        "valueDec": 1320.0,
        "value": "1320",
        "displayValue": "22m 0s"
      },
      "scorePerMatch": {
        "label": "Score/Match",
        "field": "ScorePerMatch",
        "category": "General",
        "valueDec": 865.0,
        "value": "865",
        "rank": 54611,
        "displayValue": "865.00"
      },
      "scorePerMin": {
        "label": "Score/Min",
        "field": "ScorePerMin",
        "category": "General",
        "valueDec": 39.32,
        "value": "39.32",
        "displayValue": "39.32"
      }
    },
    "curr_p10": {
      "trnRating": {
        "label": "TRN Rating",
        "field": "TRNRating",
        "category": "Rating",
        "valueInt": 1114,
        "value": "1114",
        "rank": 1906080,
        "displayValue": "1,114"
      },
      "score": {
        "label": "Score",
        "field": "Score",
        "category": "General",
        "valueInt": 3007,
        "value": "3007",
        "rank": 4597035,
        "displayValue": "3,007"
      },
      "top1": {
        "label": "Wins",
        "field": "Top1",
        "category": "Tops",
        "valueInt": 1,
        "value": "1",
        "rank": 3299644,
        "displayValue": "1"
      },
      "top3": {
        "label": "Top 3",
        "field": "Top3",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top5": {
        "label": "Top 5",
        "field": "Top5",
        "category": "Tops",
        "valueInt": 3,
        "value": "3",
        "rank": 4230720,
        "displayValue": "3"
      },
      "top6": {
        "label": "Top 6",
        "field": "Top6",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top10": {
        "label": "Top 10",
        "field": "Top10",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top12": {
        "label": "Top 12",
        "field": "Top12",
        "category": "Tops",
        "valueInt": 5,
        "value": "5",
        "rank": 4536173,
        "displayValue": "5"
      },
      "top25": {
        "label": "Top 25",
        "field": "Top25",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "kd": {
        "label": "K/d",
        "field": "KD",
        "category": "General",
        "valueDec": 3.18,
        "value": "3.18",
        "rank": 691587,
        "displayValue": "3.18"
      },
      "winRatio": {
        "label": "Win %",
        "field": "WinRatio",
        "category": "General",
        "valueDec": 8.3,
        "value": "8.3",
        "rank": 1668755,
        "displayValue": "8.30"
      },
      "matches": {
        "label": "Matches",
        "field": "Matches",
        "category": "General",
        "valueInt": 12,
        "value": "12",
        "rank": 4771157,
        "displayValue": "12"
      },
      "kills": {
        "label": "Kills",
        "field": "Kills",
        "category": "General",
        "valueInt": 35,
        "value": "35",
        "rank": 3903874,
        "displayValue": "35"
      },
      "minutesPlayed": {
        "label": "Time Played",
        "field": "MinutesPlayed",
        "category": "General",
        "valueInt": 101,
        "value": "101",
        "displayValue": "1h 41m "
      },
      "kpm": {
        "label": "Kills/Min",
        "field": "KPM",
        "category": "General",
        "valueDec": 0.35,
        "value": "0.35",
        "displayValue": "0.35"
      },
      "kpg": {
        "label": "Kills/Match",
        "field": "KPG",
        "category": "General",
        "valueDec": 2.92,
        "value": "2.92",
        "rank": 625586,
        "displayValue": "2.92"
      },
      "avgTimePlayed": {
        "label": "Avg. Match Time",
        "field": "AvgTimePlayed",
        "category": "General",
        "valueDec": 505.0,
        "value": "505",
        "displayValue": "8m 25s"
      },
      "scorePerMatch": {
        "label": "Score/Match",
        "field": "ScorePerMatch",
        "category": "General",
        "valueDec": 250.58,
        "value": "250.58",
        "rank": 1471736,
        "displayValue": "250.58"
      },
      "scorePerMin": {
        "label": "Score/Min",
        "field": "ScorePerMin",
        "category": "General",
        "valueDec": 29.77,
        "value": "29.77",
        "displayValue": "29.77"
      }
    },
    "curr_p9": {
      "trnRating": {
        "label": "TRN Rating",
        "field": "TRNRating",
        "category": "Rating",
        "valueInt": 1913,
        "value": "1913",
        "rank": 180223,
        "displayValue": "1,913"
      },
      "score": {
        "label": "Score",
        "field": "Score",
        "category": "General",
        "valueInt": 6551,
        "value": "6551",
        "rank": 3780486,
        "displayValue": "6,551"
      },
      "top1": {
        "label": "Wins",
        "field": "Top1",
        "category": "Tops",
        "valueInt": 5,
        "value": "5",
        "rank": 2172371,
        "displayValue": "5"
      },
      "top3": {
        "label": "Top 3",
        "field": "Top3",
        "category": "Tops",
        "valueInt": 7,
        "value": "7",
        "rank": 3220197,
        "displayValue": "7"
      },
      "top5": {
        "label": "Top 5",
        "field": "Top5",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top6": {
        "label": "Top 6",
        "field": "Top6",
        "category": "Tops",
        "valueInt": 10,
        "value": "10",
        "rank": 3600729,
        "displayValue": "10"
      },
      "top10": {
        "label": "Top 10",
        "field": "Top10",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top12": {
        "label": "Top 12",
        "field": "Top12",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "top25": {
        "label": "Top 25",
        "field": "Top25",
        "category": "Tops",
        "valueInt": 0,
        "value": "0",
        "rank": 1,
        "displayValue": "0"
      },
      "kd": {
        "label": "K/d",
        "field": "KD",
        "category": "General",
        "valueDec": 7.15,
        "value": "7.15",
        "rank": 53779,
        "displayValue": "7.15"
      },
      "winRatio": {
        "label": "Win %",
        "field": "WinRatio",
        "category": "General",
        "valueDec": 27.8,
        "value": "27.8",
        "rank": 230869,
        "displayValue": "27.80"
      },
      "matches": {
        "label": "Matches",
        "field": "Matches",
        "category": "General",
        "valueInt": 18,
        "value": "18",
        "rank": 4490559,
        "displayValue": "18"
      },
      "kills": {
        "label": "Kills",
        "field": "Kills",
        "category": "General",
        "valueInt": 93,
        "value": "93",
        "rank": 2593207,
        "displayValue": "93"
      },
      "minutesPlayed": {
        "label": "Time Played",
        "field": "MinutesPlayed",
        "category": "General",
        "valueInt": 206,
        "value": "206",
        "displayValue": "3h 26m "
      },
      "kpm": {
        "label": "Kills/Min",
        "field": "KPM",
        "category": "General",
        "valueDec": 0.45,
        "value": "0.45",
        "displayValue": "0.45"
      },
      "kpg": {
        "label": "Kills/Match",
        "field": "KPG",
        "category": "General",
        "valueDec": 5.17,
        "value": "5.17",
        "rank": 53369,
        "displayValue": "5.17"
      },
      "avgTimePlayed": {
        "label": "Avg. Match Time",
        "field": "AvgTimePlayed",
        "category": "General",
        "valueDec": 686.67,
        "value": "686.67",
        "displayValue": "11m 26s"
      },
      "scorePerMatch": {
        "label": "Score/Match",
        "field": "ScorePerMatch",
        "category": "General",
        "valueDec": 363.94,
        "value": "363.94",
        "rank": 182875,
        "displayValue": "363.94"
      },
      "scorePerMin": {
        "label": "Score/Min",
        "field": "ScorePerMin",
        "category": "General",
        "valueDec": 31.8,
        "value": "31.8",
        "displayValue": "31.80"
      }
    }
  },
  "lifeTimeStats": [
    {
      "key": "Top 5s",
      "value": "3446"
    },
    {
      "key": "Top 3s",
      "value": "3323"
    },
    {
      "key": "Top 6s",
      "value": "3916"
    },
    {
      "key": "Top 10",
      "value": "3206"
    },
    {
      "key": "Top 12s",
      "value": "4245"
    },
    {
      "key": "Top 25s",
      "value": "4031"
    },
    {
      "key": "Score",
      "value": "3,259,727"
    },
    {
      "key": "Matches Played",
      "value": "22164"
    },
    {
      "key": "Wins",
      "value": "7761"
    },
    {
      "key": "Win%",
      "value": "35%"
    },
    {
      "key": "Kills",
      "value": "137198"
    },
    {
      "key": "K/d",
      "value": "9.53"
    }
  ],
  "recentMatches": [
    {
      "id": 119019152,
      "accountId": "4735ce91-3292-4caf-8a5b-17789b40f79c",
      "playlist": "p10",
      "kills": 1,
      "minutesPlayed": 1,
      "top1": 0,
      "top5": 0,
      "top6": 0,
      "top10": 0,
      "top12": 0,
      "top25": 0,
      "matches": 1,
      "top3": 0,
      "dateCollected": "2020-08-05T14:21:56",
      "score": 67,
      "platform": 103,
      "trnRating": 1114.6,
      "trnRatingChange": -103.9885,
      "playlistId": 31,
      "playersOutlived": 13
    },
    {
      "id": 119005764,
      "accountId": "4735ce91-3292-4caf-8a5b-17789b40f79c",
      "playlist": "p10",
      "kills": 0,
      "minutesPlayed": 8,
      "top1": 0,
      "top5": 0,
      "top6": 0,
      "top10": 0,
      "top12": 0,
      "top25": 0,
      "matches": 1,
      "top3": 0,
      "dateCollected": "2020-08-05T14:16:41",
      "score": 129,
      "platform": 103,
      "trnRating": 1218.6,
      "trnRatingChange": -101.2055,
      "playlistId": 31,
      "playersOutlived": 67
    },
    {
      "id": 118948638,
      "accountId": "4735ce91-3292-4caf-8a5b-17789b40f79c",
      "playlist": "p10",
      "kills": 11,
      "minutesPlayed": 18,
      "top1": 0,
      "top5": 1,
      "top6": 0,
      "top10": 0,
      "top12": 1,
      "top25": 0,
      "matches": 1,
      "top3": 0,
      "dateCollected": "2020-08-05T13:51:53",
      "score": 575,
      "platform": 103,
      "trnRating": 1319.8,
      "trnRatingChange": 84.71025,
      "playlistId": 31,
      "playersOutlived": 96
    },
    {
      "id": 118935653,
      "accountId": "4735ce91-3292-4caf-8a5b-17789b40f79c",
      "playlist": "p10",
      "kills": 0,
      "minutesPlayed": 7,
      "top1": 0,
      "top5": 0,
      "top6": 0,
      "top10": 0,
      "top12": 0,
      "top25": 0,
      "matches": 1,
      "top3": 0,
      "dateCollected": "2020-08-05T13:45:08",
      "score": 108,
      "platform": 103,
      "trnRating": 1235.1,
      "trnRatingChange": -100.76275,
      "playlistId": 31,
      "playersOutlived": 64
    },
    {
      "id": 118881726,
      "accountId": "4735ce91-3292-4caf-8a5b-17789b40f79c",
      "playlist": "p10",
      "kills": 4,
      "minutesPlayed": 15,
      "top1": 1,
      "top5": 1,
      "top6": 0,
      "top10": 0,
      "top12": 1,
      "top25": 0,
      "matches": 1,
      "top3": 0,
      "dateCollected": "2020-08-05T13:22:23",
      "score": 663,
      "platform": 103,
      "trnRating": 1335.9,
      "trnRatingChange": 152.67200000000003,
      "playlistId": 31,
      "playersOutlived": 96
    }
  ]
}
""".data(using: .utf8)
