# https://app.codesignal.com/interview-practice/task/oZXs4td52fsdWC9kR
# deleteFromBST
class CodeSignalTests
    def self.tests
       [
#1 ------------
'{
    "value": 5,
    "left": {
        "value": 2,
        "left": {
            "value": 1,
            "left": null,
            "right": null
        },
        "right": {
            "value": 3,
            "left": null,
            "right": null
        }
    },
    "right": {
        "value": 6,
        "left": null,
        "right": {
            "value": 8,
            "left": {
                "value": 7,
                "left": null,
                "right": null
            },
            "right": null
        }
    }
}',
[4, 5, 6],
'{
    "value": 3,
    "left": {
        "value": 2,
        "left": {
            "value": 1,
            "left": null,
            "right": null
        },
        "right": null
    },
    "right": {
        "value": 8,
        "left": {
            "value": 7,
            "left": null,
            "right": null
        },
        "right": null
    }
}',
# 10 ----------
'{
    "value": 221807748,
    "left": {
        "value": -990916866,
        "left": {
            "value": -995302986,
            "left": null,
            "right": {
                "value": -994200157,
                "left": {
                    "value": -995198936,
                    "left": {
                        "value": -995264952,
                        "left": {
                            "value": -995280098,
                            "left": {
                                "value": -995290367,
                                "left": {
                                    "value": -995295554,
                                    "left": null,
                                    "right": {
                                        "value": -995291001,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -995281763,
                                    "left": {
                                        "value": -995287062,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -995281063,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -995268544,
                                "left": {
                                    "value": -995273082,
                                    "left": {
                                        "value": -995277598,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -995269755,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -995265174,
                                    "left": {
                                        "value": -995267714,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -995265028,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": -995234484,
                            "left": {
                                "value": -995246257,
                                "left": {
                                    "value": -995263887,
                                    "left": {
                                        "value": -995264552,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -995263209,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -995244277,
                                    "left": {
                                        "value": -995245297,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -995236255,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -995213546,
                                "left": {
                                    "value": -995224178,
                                    "left": {
                                        "value": -995230556,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -995216606,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -995199242,
                                    "left": {
                                        "value": -995205954,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -995199219,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": -994295455,
                        "left": {
                            "value": -994436943,
                            "left": {
                                "value": -994714984,
                                "left": {
                                    "value": -995081844,
                                    "left": {
                                        "value": -995166285,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -994811470,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -994562197,
                                    "left": {
                                        "value": -994624369,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -994471968,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -994385110,
                                "left": {
                                    "value": -994410494,
                                    "left": {
                                        "value": -994426683,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -994395951,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -994322817,
                                    "left": {
                                        "value": -994367146,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -994308705,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": -994243624,
                            "left": {
                                "value": -994259373,
                                "left": {
                                    "value": -994269769,
                                    "left": {
                                        "value": -994285094,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -994266644,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -994248065,
                                    "left": {
                                        "value": -994253179,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -994244722,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -994211910,
                                "left": {
                                    "value": -994231670,
                                    "left": {
                                        "value": -994233406,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -994215339,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -994210498,
                                    "left": {
                                        "value": -994210846,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -994201300,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                },
                "right": {
                    "value": -992744368,
                    "left": {
                        "value": -993142739,
                        "left": {
                            "value": -993550243,
                            "left": {
                                "value": -993657636,
                                "left": {
                                    "value": -993773158,
                                    "left": {
                                        "value": -994006957,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -993740673,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -993630840,
                                    "left": {
                                        "value": -993642998,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -993580932,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -993498498,
                                "left": {
                                    "value": -993526310,
                                    "left": {
                                        "value": -993537749,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -993508525,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -993248577,
                                    "left": {
                                        "value": -993403104,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -993233699,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": -993113065,
                            "left": {
                                "value": -993126398,
                                "left": {
                                    "value": -993133564,
                                    "left": {
                                        "value": -993140337,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -993128683,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": null
                            },
                            "right": {
                                "value": -993057332,
                                "left": {
                                    "value": -993097652,
                                    "left": {
                                        "value": -993100302,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -993079555,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -992931616,
                                    "left": {
                                        "value": -993039878,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -992817660,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": -991545728,
                        "left": {
                            "value": -992515050,
                            "left": {
                                "value": -992585004,
                                "left": {
                                    "value": -992698224,
                                    "left": {
                                        "value": -992720116,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -992602146,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": null
                            },
                            "right": {
                                "value": -991689179,
                                "left": {
                                    "value": -991870815,
                                    "left": {
                                        "value": -992460092,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -991738176,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -991637735,
                                    "left": {
                                        "value": -991655566,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            }
                        },
                        "right": {
                            "value": -991365170,
                            "left": {
                                "value": -991494592,
                                "left": {
                                    "value": -991510829,
                                    "left": {
                                        "value": -991523352,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -991497277,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -991418080,
                                    "left": {
                                        "value": -991437157,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -991379758,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -991026283,
                                "left": {
                                    "value": -991164547,
                                    "left": {
                                        "value": -991321589,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -991132227,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -990990382,
                                    "left": {
                                        "value": -991011936,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -990927474,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                }
            }
        },
        "right": {
            "value": -931933709,
            "left": {
                "value": -936951920,
                "left": {
                    "value": -962708514,
                    "left": {
                        "value": -987931090,
                        "left": {
                            "value": -989199107,
                            "left": {
                                "value": -989449324,
                                "left": {
                                    "value": -990791684,
                                    "left": {
                                        "value": -990885257,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -990469336,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -989329021,
                                    "left": {
                                        "value": -989346768,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -989247271,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -988321086,
                                "left": {
                                    "value": -989121768,
                                    "left": {
                                        "value": -989144366,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -988399265,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -988251860,
                                    "left": {
                                        "value": -988274909,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -988138129,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": -967915158,
                            "left": {
                                "value": -987764158,
                                "left": {
                                    "value": -987785644,
                                    "left": {
                                        "value": -987896002,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -987774362,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -986536174,
                                    "left": {
                                        "value": -986945147,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -981305897,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -967812059,
                                "left": {
                                    "value": -967843170,
                                    "left": {
                                        "value": -967889461,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -967824377,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -964722727,
                                    "left": {
                                        "value": -964971628,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -963189233,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": -954542471,
                        "left": {
                            "value": -957476618,
                            "left": {
                                "value": -962080027,
                                "left": {
                                    "value": -962649696,
                                    "left": {
                                        "value": -962693651,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -962390662,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -960684763,
                                    "left": {
                                        "value": -961906894,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -960448837,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -955542728,
                                "left": {
                                    "value": -957264945,
                                    "left": {
                                        "value": -957305485,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -955996413,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -954584408,
                                    "left": {
                                        "value": -954854478,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -954569475,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": -944051615,
                            "left": {
                                "value": -949258410,
                                "left": {
                                    "value": -950954191,
                                    "left": {
                                        "value": -953712611,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -950572750,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -945978638,
                                    "left": {
                                        "value": -948541337,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -945577706,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -937801179,
                                "left": {
                                    "value": -942440254,
                                    "left": {
                                        "value": -942799544,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -939182843,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -937259754,
                                    "left": {
                                        "value": -937484227,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -937043898,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                },
                "right": {
                    "value": -935437625,
                    "left": {
                        "value": -936823510,
                        "left": {
                            "value": -936850196,
                            "left": {
                                "value": -936927775,
                                "left": {
                                    "value": -936939569,
                                    "left": {
                                        "value": -936950104,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -936933575,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -936916048,
                                    "left": {
                                        "value": -936924657,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -936895446,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -936837192,
                                "left": {
                                    "value": -936849311,
                                    "left": {
                                        "value": -936850116,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -936848757,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -936826312,
                                    "left": {
                                        "value": -936835655,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -936825753,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": -936715442,
                            "left": {
                                "value": -936774659,
                                "left": {
                                    "value": -936805845,
                                    "left": {
                                        "value": -936822782,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -936788387,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -936732051,
                                    "left": {
                                        "value": -936745948,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -936724048,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -936008677,
                                "left": {
                                    "value": -936542996,
                                    "left": {
                                        "value": -936632871,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -936485591,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -935654801,
                                    "left": {
                                        "value": -935813227,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -935614652,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": -932435931,
                        "left": {
                            "value": -933881532,
                            "left": {
                                "value": -934914980,
                                "left": {
                                    "value": -935092247,
                                    "left": {
                                        "value": -935134851,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -935016937,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -934495917,
                                    "left": {
                                        "value": -934752317,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -934404777,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -932590026,
                                "left": {
                                    "value": -932690165,
                                    "left": {
                                        "value": -933648866,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -932619810,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -932504804,
                                    "left": {
                                        "value": -932547894,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -932494112,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": -932132768,
                            "left": {
                                "value": -932235798,
                                "left": {
                                    "value": -932281492,
                                    "left": {
                                        "value": -932335993,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -932267258,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -932146423,
                                    "left": {
                                        "value": -932225013,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -932142467,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -932057316,
                                "left": {
                                    "value": -932090098,
                                    "left": {
                                        "value": -932108986,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -932067692,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -932036998,
                                    "left": {
                                        "value": -932047082,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -932008078,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                }
            },
            "right": {
                "value": 139496665,
                "left": {
                    "value": -114468874,
                    "left": {
                        "value": -547690037,
                        "left": {
                            "value": -608470208,
                            "left": {
                                "value": -631885634,
                                "left": {
                                    "value": -885748812,
                                    "left": {
                                        "value": -901539666,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -870979153,
                                        "left": {
                                            "value": -870979154,
                                            "left": {
                                                "value": -870979155,
                                                "left": {
                                                    "value": -870979156,
                                                    "left": {
                                                        "value": -870979157,
                                                        "left": {
                                                            "value": -870979158,
                                                            "left": {
                                                                "value": -870979159,
                                                                "left": {
                                                                    "value": -870979160,
                                                                    "left": {
                                                                        "value": -870979161,
                                                                        "left": {
                                                                            "value": -870979162,
                                                                            "left": {
                                                                                "value": -870979163,
                                                                                "left": {
                                                                                    "value": -870979164,
                                                                                    "left": {
                                                                                        "value": -870979165,
                                                                                        "left": {
                                                                                            "value": -870979166,
                                                                                            "left": {
                                                                                                "value": -870979167,
                                                                                                "left": {
                                                                                                    "value": -870979168,
                                                                                                    "left": {
                                                                                                        "value": -870979169,
                                                                                                        "left": {
                                                                                                            "value": -870979170,
                                                                                                            "left": {
                                                                                                                "value": -870979171,
                                                                                                                "left": {
                                                                                                                    "value": -870979172,
                                                                                                                    "left": {
                                                                                                                        "value": -870979173,
                                                                                                                        "left": {
                                                                                                                            "value": -870979174,
                                                                                                                            "left": {
                                                                                                                                "value": -870979175,
                                                                                                                                "left": {
                                                                                                                                    "value": -870979176,
                                                                                                                                    "left": {
                                                                                                                                        "value": -870979177,
                                                                                                                                        "left": {
                                                                                                                                            "value": -870979178,
                                                                                                                                            "left": {
                                                                                                                                                "value": -870979179,
                                                                                                                                                "left": {
                                                                                                                                                    "value": -870979180,
                                                                                                                                                    "left": {
                                                                                                                                                        "value": -870979181,
                                                                                                                                                        "left": {
                                                                                                                                                            "value": -870979182,
                                                                                                                                                            "left": {
                                                                                                                                                                "value": -870979183,
                                                                                                                                                                "left": {
                                                                                                                                                                    "value": -870979184,
                                                                                                                                                                    "left": {
                                                                                                                                                                        "value": -870979185,
                                                                                                                                                                        "left": {
                                                                                                                                                                            "value": -870979186,
                                                                                                                                                                            "left": {
                                                                                                                                                                                "value": -870979187,
                                                                                                                                                                                "left": {
                                                                                                                                                                                    "value": -870979188,
                                                                                                                                                                                    "left": {
                                                                                                                                                                                        "value": -870979189,
                                                                                                                                                                                        "left": {
                                                                                                                                                                                            "value": -870979190,
                                                                                                                                                                                            "left": {
                                                                                                                                                                                                "value": -870979191,
                                                                                                                                                                                                "left": {
                                                                                                                                                                                                    "value": -870979192,
                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                        "value": -870979193,
                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                            "value": -870979194,
                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                "value": -870979195,
                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                    "value": -870979196,
                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                        "value": -870979197,
                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                            "value": -870979198,
                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                "value": -870979199,
                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                    "value": -870979200,
                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                        "value": -870979201,
                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                            "value": -870979202,
                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                "value": -870979203,
                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                    "value": -870979204,
                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                        "value": -870979205,
                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                            "value": -870979206,
                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                "value": -870979207,
                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                    "value": -870979208,
                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                        "value": -870979209,
                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                            "value": -870979210,
                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                "value": -870979211,
                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                    "value": -870979212,
                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                        "value": -870979213,
                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                            "value": -870979214,
                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                "value": -870979215,
                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                    "value": -870979216,
                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                        "value": -870979217,
                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                            "value": -870979218,
                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                "value": -870979219,
                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                    "value": -870979220,
                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                        "value": -870979221,
                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                            "value": -870979222,
                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                "value": -870979223,
                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                    "value": -870979224,
                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                        "value": -870979225,
                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                            "value": -870979226,
                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                "value": -870979227,
                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                    "value": -870979228,
                                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                                        "value": -870979229,
                                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                                            "value": -870979230,
                                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                                "value": -870979231,
                                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                                    "value": -870979232,
                                                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                                                        "value": -870979233,
                                                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                                                            "value": -870979234,
                                                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                                                "value": -870979235,
                                                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                                                    "value": -870979236,
                                                                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                                                                        "value": -870979237,
                                                                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                                                                            "value": -870979238,
                                                                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                                                                "value": -870979239,
                                                                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                                                                    "value": -870979240,
                                                                                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                                                                                        "value": -870979241,
                                                                                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                                                                                            "value": -870979242,
                                                                                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                "value": -870979243,
                                                                                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                    "value": -870979244,
                                                                                                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                        "value": -870979245,
                                                                                                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                            "value": -870979246,
                                                                                                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                "value": -870979247,
                                                                                                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                    "value": -870979248,
                                                                                                                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                        "value": -870979249,
                                                                                                                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                            "value": -870979250,
                                                                                                                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                "value": -870979251,
                                                                                                                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                    "value": -870979252,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                        "value": -870979253,
                                                                                                                                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            "value": -870979254,
                                                                                                                                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                "value": -870979255,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "value": -870979256,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "value": -870979257,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "value": -870979258,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "value": -870979259,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "value": -870979260,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "value": -870979261,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "value": -870979262,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "value": -870979263,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "value": -870979264,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "value": -870979265,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "value": -870979266,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "value": -870979267,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "value": -870979268,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "value": -870979269,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "value": -870979270,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "value": -870979271,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "value": -870979272,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "value": -870979273,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "value": -870979274,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "value": -870979275,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "value": -870979276,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "left": null,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                },
                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                            },
                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                        },
                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                    },
                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                },
                                                                                                                                                                                                "right": null
                                                                                                                                                                                            },
                                                                                                                                                                                            "right": null
                                                                                                                                                                                        },
                                                                                                                                                                                        "right": null
                                                                                                                                                                                    },
                                                                                                                                                                                    "right": null
                                                                                                                                                                                },
                                                                                                                                                                                "right": null
                                                                                                                                                                            },
                                                                                                                                                                            "right": null
                                                                                                                                                                        },
                                                                                                                                                                        "right": null
                                                                                                                                                                    },
                                                                                                                                                                    "right": null
                                                                                                                                                                },
                                                                                                                                                                "right": null
                                                                                                                                                            },
                                                                                                                                                            "right": null
                                                                                                                                                        },
                                                                                                                                                        "right": null
                                                                                                                                                    },
                                                                                                                                                    "right": null
                                                                                                                                                },
                                                                                                                                                "right": null
                                                                                                                                            },
                                                                                                                                            "right": null
                                                                                                                                        },
                                                                                                                                        "right": null
                                                                                                                                    },
                                                                                                                                    "right": null
                                                                                                                                },
                                                                                                                                "right": null
                                                                                                                            },
                                                                                                                            "right": null
                                                                                                                        },
                                                                                                                        "right": null
                                                                                                                    },
                                                                                                                    "right": null
                                                                                                                },
                                                                                                                "right": null
                                                                                                            },
                                                                                                            "right": null
                                                                                                        },
                                                                                                        "right": null
                                                                                                    },
                                                                                                    "right": null
                                                                                                },
                                                                                                "right": null
                                                                                            },
                                                                                            "right": null
                                                                                        },
                                                                                        "right": null
                                                                                    },
                                                                                    "right": null
                                                                                },
                                                                                "right": null
                                                                            },
                                                                            "right": null
                                                                        },
                                                                        "right": null
                                                                    },
                                                                    "right": null
                                                                },
                                                                "right": null
                                                            },
                                                            "right": null
                                                        },
                                                        "right": null
                                                    },
                                                    "right": null
                                                },
                                                "right": null
                                            },
                                            "right": null
                                        },
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -624500760,
                                    "left": {
                                        "value": -628231889,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -620080304,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -607969768,
                                "left": {
                                    "value": -608262486,
                                    "left": {
                                        "value": -608318559,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -608110784,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -581529830,
                                    "left": {
                                        "value": -598010873,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -562720675,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": -328307409,
                            "left": {
                                "value": -534608050,
                                "left": {
                                    "value": -538517143,
                                    "left": {
                                        "value": -542833010,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -536927766,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -428971026,
                                    "left": {
                                        "value": -485430049,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -396328449,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -159795548,
                                "left": {
                                    "value": -172731429,
                                    "left": {
                                        "value": -200534112,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -167446328,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -119623941,
                                    "left": {
                                        "value": -144441751,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -116794092,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": -22468120,
                        "left": {
                            "value": -56258798,
                            "left": {
                                "value": -56482307,
                                "left": {
                                    "value": -61799270,
                                    "left": {
                                        "value": -105549138,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -58930074,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -56371673,
                                    "left": {
                                        "value": -56405741,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -56359061,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -48330611,
                                "left": {
                                    "value": -50540116,
                                    "left": {
                                        "value": -54729257,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -49362221,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -43657152,
                                    "left": {
                                        "value": -43826756,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -35645127,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 137657700,
                            "left": {
                                "value": 100844991,
                                "left": {
                                    "value": 64948352,
                                    "left": {
                                        "value": 42124053,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 90857743,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 125786198,
                                    "left": {
                                        "value": 121642899,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 131901712,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 139059933,
                                "left": {
                                    "value": 138646990,
                                    "left": {
                                        "value": 137683491,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 138924710,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 139285536,
                                    "left": {
                                        "value": 139261620,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 139401660,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                },
                "right": {
                    "value": 156152886,
                    "left": {
                        "value": 143893207,
                        "left": {
                            "value": 139592306,
                            "left": {
                                "value": 139572135,
                                "left": {
                                    "value": 139548978,
                                    "left": {
                                        "value": 139532992,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 139560291,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 139582244,
                                    "left": {
                                        "value": 139572732,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 139590972,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 143366100,
                                "left": {
                                    "value": 140783122,
                                    "left": {
                                        "value": 140213477,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 140820931,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 143739169,
                                    "left": {
                                        "value": 143502112,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 143852032,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 154473723,
                            "left": {
                                "value": 153367254,
                                "left": {
                                    "value": 147316718,
                                    "left": {
                                        "value": 146101215,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 150756178,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 153460819,
                                    "left": {
                                        "value": 153416956,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 154239432,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 156033063,
                                "left": {
                                    "value": 155638458,
                                    "left": {
                                        "value": 155423570,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 155656452,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 156097125,
                                    "left": {
                                        "value": 156085421,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 156128836,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 200980433,
                        "left": {
                            "value": 165040430,
                            "left": {
                                "value": 161924438,
                                "left": {
                                    "value": 160738114,
                                    "left": {
                                        "value": 158293486,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 161525636,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 164086279,
                                    "left": {
                                        "value": 162148949,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 164368506,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 184049242,
                                "left": {
                                    "value": 173021150,
                                    "left": {
                                        "value": 170737860,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 180060912,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 190789340,
                                    "left": {
                                        "value": 184990221,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 192259445,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 213358504,
                            "left": {
                                "value": 212202526,
                                "left": {
                                    "value": 210849324,
                                    "left": {
                                        "value": 204833109,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 211644774,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 213006608,
                                    "left": {
                                        "value": 212808546,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 213341540,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 214757877,
                                "left": {
                                    "value": 214097828,
                                    "left": {
                                        "value": 213395995,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 214222398,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 218212873,
                                    "left": {
                                        "value": 215020320,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 220507910,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    "right": {
        "value": 343672030,
        "left": {
            "value": 321314681,
            "left": {
                "value": 275006101,
                "left": {
                    "value": 258312075,
                    "left": {
                        "value": 255054797,
                        "left": {
                            "value": 235493466,
                            "left": {
                                "value": 226632113,
                                "left": {
                                    "value": 225820506,
                                    "left": {
                                        "value": 223128933,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 226598596,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 231014896,
                                    "left": {
                                        "value": 227194555,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 232078836,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 244052242,
                                "left": {
                                    "value": 240763493,
                                    "left": {
                                        "value": 236321088,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 241237649,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 248212468,
                                    "left": {
                                        "value": 246214968,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 248320665,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 257525658,
                            "left": {
                                "value": 257014361,
                                "left": {
                                    "value": 256347141,
                                    "left": {
                                        "value": 255533651,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 256803609,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 257191230,
                                    "left": {
                                        "value": 257167879,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 257328393,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 257566990,
                                "left": {
                                    "value": 257551645,
                                    "left": {
                                        "value": 257538525,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 257556328,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 258062794,
                                    "left": {
                                        "value": 258041069,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 258077605,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 273874169,
                        "left": {
                            "value": 271131837,
                            "left": {
                                "value": 269895426,
                                "left": {
                                    "value": 258360118,
                                    "left": {
                                        "value": 258344684,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 267646607,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 270253069,
                                    "left": {
                                        "value": 270077284,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 270616137,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 273852360,
                                "left": {
                                    "value": 272272443,
                                    "left": {
                                        "value": 271855214,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 273154953,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 273862724,
                                    "left": {
                                        "value": 273855675,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 273865013,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 274926783,
                            "left": {
                                "value": 274028237,
                                "left": {
                                    "value": 273996085,
                                    "left": {
                                        "value": 273969991,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 274008095,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 274551799,
                                    "left": {
                                        "value": 274072567,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 274801498,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 274994093,
                                "left": {
                                    "value": 274978195,
                                    "left": {
                                        "value": 274941395,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 274982217,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 274996845,
                                    "left": {
                                        "value": 274996133,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 275000175,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                },
                "right": {
                    "value": 303517924,
                    "left": {
                        "value": 278966006,
                        "left": {
                            "value": 277798407,
                            "left": {
                                "value": 277758226,
                                "left": {
                                    "value": 276225134,
                                    "left": {
                                        "value": 275524368,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 277690795,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 277772835,
                                    "left": {
                                        "value": 277759377,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 277786974,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 278627816,
                                "left": {
                                    "value": 278033829,
                                    "left": {
                                        "value": 278018932,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 278397899,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 278716937,
                                    "left": {
                                        "value": 278647224,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 278778011,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 279496240,
                            "left": {
                                "value": 279103095,
                                "left": {
                                    "value": 279019258,
                                    "left": {
                                        "value": 278995414,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 279036672,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 279344107,
                                    "left": {
                                        "value": 279311767,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 279388783,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 283217167,
                                "left": {
                                    "value": 281884333,
                                    "left": {
                                        "value": 281850316,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 282174024,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 298533889,
                                    "left": {
                                        "value": 292195244,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 303144613,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 318205448,
                        "left": {
                            "value": 307505978,
                            "left": {
                                "value": 303921723,
                                "left": {
                                    "value": 303580722,
                                    "left": {
                                        "value": 303565898,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 303748670,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 305327073,
                                    "left": {
                                        "value": 304294838,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 306324381,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 309055973,
                                "left": {
                                    "value": 308800172,
                                    "left": {
                                        "value": 308480404,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 309020988,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 313329180,
                                    "left": {
                                        "value": 311019697,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 314157153,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 320263723,
                            "left": {
                                "value": 319275095,
                                "left": {
                                    "value": 318231142,
                                    "left": {
                                        "value": 318216283,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 319057774,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 320207854,
                                    "left": {
                                        "value": 320049435,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 320251562,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 320375518,
                                "left": {
                                    "value": 320348284,
                                    "left": {
                                        "value": 320329737,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 320360535,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 320784350,
                                    "left": {
                                        "value": 320477768,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 321207606,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                }
            },
            "right": {
                "value": 341672279,
                "left": {
                    "value": 333748918,
                    "left": {
                        "value": 321942476,
                        "left": {
                            "value": 321751335,
                            "left": {
                                "value": 321654870,
                                "left": null,
                                "right": {
                                    "value": 321709349,
                                    "left": {
                                        "value": 321699012,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 321720424,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 321886473,
                                "left": {
                                    "value": 321799633,
                                    "left": {
                                        "value": 321767864,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 321836453,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 321918543,
                                    "left": {
                                        "value": 321908428,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 321929766,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 322059073,
                            "left": {
                                "value": 322021579,
                                "left": {
                                    "value": 321968864,
                                    "left": null,
                                    "right": {
                                        "value": 321999083,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 322041831,
                                    "left": {
                                        "value": 322031729,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 322048919,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 329530371,
                                "left": {
                                    "value": 325823337,
                                    "left": {
                                        "value": 325307054,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 328288760,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 331746622,
                                    "left": {
                                        "value": 331231354,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 333310011,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 337113773,
                        "left": {
                            "value": 335711481,
                            "left": {
                                "value": 334312008,
                                "left": {
                                    "value": 334042313,
                                    "left": {
                                        "value": 333797898,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 334200895,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 335575788,
                                    "left": {
                                        "value": 335056209,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 335615853,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 336655978,
                                "left": {
                                    "value": 336021585,
                                    "left": {
                                        "value": 335821195,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 336429191,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 336693405,
                                    "left": {
                                        "value": 336667840,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 336803210,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 338253196,
                            "left": {
                                "value": 337140732,
                                "left": {
                                    "value": 337127761,
                                    "left": {
                                        "value": 337116660,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 337135523,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 338077478,
                                    "left": {
                                        "value": 337277315,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 338119109,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 338289902,
                                "left": {
                                    "value": 338272199,
                                    "left": {
                                        "value": 338264402,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 338288382,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 341050298,
                                    "left": {
                                        "value": 339873389,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 341257405,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                },
                "right": {
                    "value": 343286660,
                    "left": {
                        "value": 343152177,
                        "left": {
                            "value": 341710156,
                            "left": {
                                "value": 341685840,
                                "left": {
                                    "value": 341678505,
                                    "left": {
                                        "value": 341677230,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 341683701,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 341698404,
                                    "left": {
                                        "value": 341693938,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 341704812,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 342189770,
                                "left": {
                                    "value": 341862253,
                                    "left": {
                                        "value": 341791052,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 341914339,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 342794301,
                                    "left": {
                                        "value": 342610617,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 342921895,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 343245182,
                            "left": {
                                "value": 343195226,
                                "left": null,
                                "right": {
                                    "value": 343219902,
                                    "left": {
                                        "value": 343207162,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 343232286,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 343264069,
                                "left": {
                                    "value": 343263058,
                                    "left": {
                                        "value": 343257613,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 343263787,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 343276440,
                                    "left": {
                                        "value": 343275661,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 343277151,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 343543049,
                        "left": {
                            "value": 343479561,
                            "left": {
                                "value": 343332870,
                                "left": {
                                    "value": 343314395,
                                    "left": {
                                        "value": 343304196,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 343316780,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 343391685,
                                    "left": {
                                        "value": 343367756,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 343402533,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 343524903,
                                "left": {
                                    "value": 343495058,
                                    "left": {
                                        "value": 343492573,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 343508767,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 343531974,
                                    "left": {
                                        "value": 343526288,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 343533620,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 343626099,
                            "left": {
                                "value": 343556345,
                                "left": {
                                    "value": 343544760,
                                    "left": {
                                        "value": 343544574,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 343546715,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 343598243,
                                    "left": {
                                        "value": 343573848,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 343612154,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 343646763,
                                "left": {
                                    "value": 343636642,
                                    "left": {
                                        "value": 343635140,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 343645635,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 343661941,
                                    "left": {
                                        "value": 343646873,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 343663764,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                }
            }
        },
        "right": {
            "value": 607697877,
            "left": {
                "value": 471363126,
                "left": {
                    "value": 404653170,
                    "left": {
                        "value": 352193829,
                        "left": {
                            "value": 350461987,
                            "left": {
                                "value": 349678714,
                                "left": {
                                    "value": 345754502,
                                    "left": {
                                        "value": 344924379,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 347548310,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 350059718,
                                    "left": {
                                        "value": 349740816,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 350181217,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 350855860,
                                "left": {
                                    "value": 350520527,
                                    "left": {
                                        "value": 350494845,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 350678789,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 350911629,
                                    "left": {
                                        "value": 350886868,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 351363545,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 389192158,
                            "left": {
                                "value": 372892547,
                                "left": {
                                    "value": 371399052,
                                    "left": {
                                        "value": 361405280,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 372157991,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 378915304,
                                    "left": {
                                        "value": 374543183,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 384010371,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 392750269,
                                "left": {
                                    "value": 391152775,
                                    "left": {
                                        "value": 390565116,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 392454065,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 396143851,
                                    "left": {
                                        "value": 392846730,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 418423800,
                        "left": {
                            "value": 415639965,
                            "left": {
                                "value": 409304277,
                                "left": {
                                    "value": 404754013,
                                    "left": {
                                        "value": 404742545,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 406858890,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 412193181,
                                    "left": {
                                        "value": 410695154,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 412769159,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 417549455,
                                "left": {
                                    "value": 416060176,
                                    "left": {
                                        "value": 415680988,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 416143384,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 418340545,
                                    "left": {
                                        "value": 417671578,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 418411882,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 460540503,
                            "left": {
                                "value": 425577160,
                                "left": {
                                    "value": 422850677,
                                    "left": {
                                        "value": 419496115,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 423424218,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 453565138,
                                    "left": {
                                        "value": 433403643,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 455010194,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 462628974,
                                "left": {
                                    "value": 461191782,
                                    "left": {
                                        "value": 460697924,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 461357078,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 464057738,
                                    "left": {
                                        "value": 463827226,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 464617093,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                },
                "right": {
                    "value": 526504849,
                    "left": {
                        "value": 514067807,
                        "left": {
                            "value": 507295331,
                            "left": {
                                "value": 471415187,
                                "left": {
                                    "value": 471380915,
                                    "left": {
                                        "value": 471371552,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 471396945,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 478577923,
                                    "left": {
                                        "value": 472508310,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 489950796,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 509868486,
                                "left": {
                                    "value": 508788790,
                                    "left": {
                                        "value": 507802383,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 509580287,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 510924776,
                                    "left": {
                                        "value": 510850515,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 511173619,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 514155957,
                            "left": {
                                "value": 514082278,
                                "left": {
                                    "value": 514069631,
                                    "left": {
                                        "value": 514068411,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 514081910,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 514133388,
                                    "left": {
                                        "value": 514105836,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 514144952,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 514343224,
                                "left": {
                                    "value": 514241835,
                                    "left": {
                                        "value": 514216897,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 514307398,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 524794170,
                                    "left": {
                                        "value": 515952233,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 525568725,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 575106644,
                        "left": {
                            "value": 556614744,
                            "left": {
                                "value": 546348510,
                                "left": null,
                                "right": {
                                    "value": 547663603,
                                    "left": {
                                        "value": 547501722,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 548946546,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 564444914,
                                "left": {
                                    "value": 557367817,
                                    "left": {
                                        "value": 557011155,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 560978436,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 572756089,
                                    "left": {
                                        "value": 564628566,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 572802540,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 578082292,
                            "left": {
                                "value": 577705603,
                                "left": {
                                    "value": 576857270,
                                    "left": {
                                        "value": 576033029,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 577114128,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 578004123,
                                    "left": {
                                        "value": 577838807,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 578039592,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 596185882,
                                "left": {
                                    "value": 581507616,
                                    "left": {
                                        "value": 579855049,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 586358454,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 602692519,
                                    "left": {
                                        "value": 599482567,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 606478687,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                }
            },
            "right": {
                "value": 636940266,
                "left": {
                    "value": 618047883,
                    "left": {
                        "value": 613578726,
                        "left": {
                            "value": 610914803,
                            "left": {
                                "value": 608915448,
                                "left": {
                                    "value": 608800253,
                                    "left": {
                                        "value": 608156814,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 608856413,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 609860336,
                                    "left": {
                                        "value": 609531732,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 610784070,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 613208306,
                                "left": {
                                    "value": 611404435,
                                    "left": {
                                        "value": 611321346,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 611685153,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 613241184,
                                    "left": {
                                        "value": 613228647,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 613370285,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 616040255,
                            "left": {
                                "value": 614689335,
                                "left": {
                                    "value": 614395995,
                                    "left": {
                                        "value": 614030504,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 614630818,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 615976618,
                                    "left": {
                                        "value": 614769641,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 616014671,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 617415812,
                                "left": {
                                    "value": 617296765,
                                    "left": {
                                        "value": 617250330,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 617374615,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 617558713,
                                    "left": {
                                        "value": 617494703,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 617989595,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 623341335,
                        "left": {
                            "value": 619510548,
                            "left": {
                                "value": 618539215,
                                "left": {
                                    "value": 618232691,
                                    "left": {
                                        "value": 618103487,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 618518359,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 618918310,
                                    "left": {
                                        "value": 618654421,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 619249549,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 622255892,
                                "left": {
                                    "value": 621963005,
                                    "left": {
                                        "value": 620695366,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 621996329,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 622962804,
                                    "left": {
                                        "value": 622920386,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 623237046,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 631116733,
                            "left": {
                                "value": 623938199,
                                "left": {
                                    "value": 623458289,
                                    "left": {
                                        "value": 623384215,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 623589496,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 629937466,
                                    "left": {
                                        "value": 628528351,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 630692917,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 633442595,
                                "left": {
                                    "value": 632710631,
                                    "left": {
                                        "value": 631211774,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 632744738,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 636829334,
                                    "left": {
                                        "value": 635476084,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 636913898,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                },
                "right": {
                    "value": 826543300,
                    "left": {
                        "value": 672117235,
                        "left": {
                            "value": 639649755,
                            "left": {
                                "value": 638018210,
                                "left": {
                                    "value": 637414224,
                                    "left": {
                                        "value": 637020805,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 637623422,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 638204755,
                                    "left": {
                                        "value": 638044888,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 638310163,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 658146309,
                                "left": {
                                    "value": 651172853,
                                    "left": {
                                        "value": 643147577,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 653457035,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 662540093,
                                    "left": {
                                        "value": 658569504,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 671010419,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 684337693,
                            "left": {
                                "value": 679737782,
                                "left": {
                                    "value": 677234482,
                                    "left": {
                                        "value": 676277806,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 679273040,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 680664462,
                                    "left": {
                                        "value": 679906242,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 682027653,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 779297477,
                                "left": {
                                    "value": 687661810,
                                    "left": {
                                        "value": 685313675,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 735708937,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 826419113,
                                    "left": {
                                        "value": 794090641,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 826519659,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 873829356,
                        "left": {
                            "value": 859337459,
                            "left": {
                                "value": 826756127,
                                "left": {
                                    "value": 826562229,
                                    "left": {
                                        "value": 826550999,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 826658898,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 853065495,
                                    "left": {
                                        "value": 832914444,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 856907003,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 871617073,
                                "left": {
                                    "value": 866154148,
                                    "left": {
                                        "value": 861642952,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 871191622,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 871759806,
                                    "left": {
                                        "value": 871643764,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 872537234,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 952299923,
                            "left": {
                                "value": 923643686,
                                "left": {
                                    "value": 918429334,
                                    "left": {
                                        "value": 882719750,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 919039628,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 941795946,
                                    "left": {
                                        "value": 932016784,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 950193116,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 996218144,
                                "left": {
                                    "value": 982763973,
                                    "left": {
                                        "value": 972929311,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 993515411,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 998068264,
                                    "left": {
                                        "value": 996612676,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 999879525,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}',

[728751367, -932335993, 822255280, 461357078, -336882146, 248214836, -111576214, -993580932, 320360535, -389179306, -995230556, -264098242, 322031729, 617415812, 304294838, 472508310, -875346347, 143852032, 139261620, 715378332, 352241045, -467300403, 675419963, -961906894, 676277806, -634956189, -64150425, 412769159, 514130241, 214757877, -993140337, 5875048, -935813227, 581543432, -717960475, 335615853, -628595198, -870979181, -165057080, 303565898, 71672189, 578004123, -121241589, 12456713, -980816627, 403567586, 277758226, 475266128, 813892078, -990469336, -989199107, 788986719, 336693405, 337277315, -870979210, 682027653, 713569276, -766188218, -995291001, -42882028, -35645127, -870979267, -183638709, 932016784, 325307054, 514067807, -826266814, 996218144, -606859429, 709413333, -807252994, 342284715, 459620668, -889721903, 343495058, -957337455, -993508525, 201676582, 153416956, 191562829, -933648866, 597474904, 42124053, -43826756, -635481856, 333310011, -995198936, -995263887, -598010873, -674043767, -290227099, -870979212, -395455126, 383987308, -954569475, 439683224, 859337459, 381507831, 226632113, -261175997, 334312008, 747608238, 335647009, 321918543, 341672279, -870979213, 274996133, -908016299, -991738176, 173935545, -342185242, 229255184, -995280098, -870979272, 245803446, -167446328, 281117984, -192155332, -585048447, -804445735, 415639965, -991545728, 942794044, -56371673, -77647384, -1991603, -936907840, -936849311, -727357181, -697355940, -989121768, -988138129, -857257640, -120086417, 138924710, 343508767, -870979162, -995234484, -145591324, -941705444, 45983500, 185191162, 336667840, 972929311, 321654870, 745816455, -142588783, -198160435, 306975938, -870979265, 90857743, 331231354, 576033029, -960243817, 729701028, -870979208, 968748243, 319057774, 54149993, -994215339, -870979176, 949551633, -870979252, 505208718, 270253069, 114708079, 343332870, -870979171, 899278474, -173226596, 337127761, -992602146, 156033063, -454496899, -870979226, -932142467, -666975211, -870979251, 211644774, -502225443, -870979179, -556113672, 575106644, -200076418, 336803210, 139560291, -809670438, -991437157, -188377371, 552932380, 973053622, 271074370, -608470208, 631889527, 307505978, 273865013, -991365170, 410695154, -502048482, 610784070, 239575727, 618539215, 343402533, -883716002, 100844991, -793267832, -741396436, -229308349, 343543049, 343391685, 320263723, -995302986, -538237572, -989329021, 251261626, -990927474, -870979157, -932494112, -192992695, -870979177, 64861753, -362692071, -887423566, 333797898, 883852082, 918429334, -175637700, -904336916, 864535362, -408016030, 617989595, 988484327, 622047838, 349740816, -870979227, -501057959, -995265028, -936916048, -85880391, -870979167, -264332044, 632732987, -631476006, -189902633, 637623422, 329530371, 87845325, -881532166, 147316718, 231014896, -23772330, -508381641, -162894422, 662540093, -994210846, 184394533, 620801438, -977348789, 143739169, 338288382, -27304200, -470187584, -670398706, 674257091, -857106149, -989247271, -995244277, 779297477, 257538525, 343544760, -934404777, 274551799, -960448837, 140783122, 812896948, -630553096, 818800783, -208310078, -41925079, 180060912, 350911629, -185080957, -962693651, -988274909, -21920522, 343277151, 613370285, -995236255, -382907932, -936850196, -994714984, 716977490, 341678505, -843541638, 283131512, 254946062, 618918310, 258360118, 621996329, 258344684, 911336240, -228752476, 560978436, 559800308, -172155161, -426075363, -870979211, 226598596, 385389338, 487029885, 258463683, -22468120, -941946434, 679737782, -646699401, -600562252, -870979169, 343257613, -86047217, 974328503, -276612113, -870979224, 161924438, 350059718, -622902792, -775435439, -916087866, -379037182, -288394071, -936632871, 645889498, -113170658, 573508129, 955649759, 613228647, -558019667, 343207162, -253635600, -646737931, 573412502, 158293486, -988251860, -936850116, -842914937, -698296177, 219099039, 260125377, 279415631, -43669633, 871617073, -211890080, 866154148, 637414224, -56482307, 514105836, -936826312, 343672030, -901539666, 481819539, 215020320, -828944725, 20718211, -506446545, -981586349, -543479545, -701979285, 139532992, 856907003, 995635584, 169793368, -427393446, -870979192, 137683491, -128097038, -21120603, -840730891, 364787012, 658146309, -608262486, 318216283, -870979235, 501125235, -935016937, 341862253, -170238662, 415972193, 394180447, 256347141, -870979266, -995290367, 623384215, 373731725, -933881532, 574848216, 390890445, -932090098, 556767849, 986250481, 847250815, 219087893, -26397520, -870979232, 623938199, 902627394, 412193181, -702255874, -994200157, 840211999, -884909023, 341791052, 537904796, 271855214, -942799544, -52493153, -180454125, -485627319, 150756178, 40503697, 213341540, -934914980, 616829322, -634504086, -265326593, 655116819, -716584061, 916659154, 341677230, 336021585, -934495917, 525568725, 35602353, 258062794, 474890626, -870979222, -537066972, 322493221, -151833496, -870979180, 430169098, 343626099, -631885634, -112013358, 638310163, -56359061, 622255892, 695689123, 857843793, 991813863, -294583648, 564628566, -972092709, -994471968, 871643764, -512038059, 267646607, -936774659, 908328006, -837342026, 308480404, -870979271, -251643751, 962453936, 611685153, -994436943, -645116133, 292969563, -990916866, 274941395, -870979268, 343152177, 343635140, 16490015, 862370254, -879436340, -870979255, -932132768, -911601471, 623237046, 431828873, -30789032, 969107690, -934752317, -131562039, 630211558, -993097652, 257014361, 278018932, 281884333, -995281063, 613208306, -992698224, -870979259, -690001262, -235410849, 160738114, 271131837, 649158455, -996170595, -870979202, -736467522, -990885257, -30301047, -834748285, -870979206, -728167890, 139582244, 613578726, -421935488, -302290129, -936950104, 240118082, 139592306, 618103487, -870979236, -870979231, -870979184, 241237649, -993128683, 264292938, -936927775, -936805845, -885748812, 258041069, -682376130, 432265101, 162148949, -691369465, 584865682, -518887685, -54729257, -18960018, -750949272, 744782652, 389192158, 431009059, -967812059, -220836411, 318205448, -117592222, 578082292, -419274257, 418340545, -95394572, 460697924, -655515107, -874791728, 100825436, 378915304, 486481935, -164755523, -993039878, -948695210, 565499688, -435254707, -773703670, 679906242, 981516635, -870979199, 515952233, 349678714, -835306148, -870979156, 514144952, 631211774, 463827226, -994210498, -936485591, 873829356, 768035709, -870979262, 765842730, 662183644, 66011192, -929189183, -127083164, -994248065, 619513193, 335056209, -808459013, -780733968, 898008330, 825863814, -964979228, -870979189, 69959181, -671606386, 321942476, 384146376, -870979244, -870979249, 998068264, 292195244, 617284425, 617296765, -257161284, 618173403, -587979366, -425631355, 306342179, -870979253, -338686855, 522756897, 342189770, 735708937, 334568471, -892965897, -986945147, -61799270, -991870815, 341914339, 615976618, 338253196, 338264402, 621963005, 110354890, 374543183, 489899171, 681233378, -700785832, 716295818, 882327865, 121160297, 200851730, -634298142, -607969768, 320348284, -715955205, -954542471, -870979203, 184049242, 614769641, 882719750, -987931090, -937259754, -15022847, 237064982, 80885305, 773875436, -658784122, 157610031, 905905473, -991164547, 611321346, -230271444, 487017754, 675633614, -949258410, -648756074, 826543300, 23922675, -493058396, 279036672, 496090525, -936823510, 244052242, 404742545, -460823463, 341257405, -573731135, -991321589, 508788790, 836930814, 258077605, 704605665, 350520527, -994624369, 655395808, 616722134, -936825753, -952777692, -936951920, -936939569, 322041831, 509580287, 605781326, 526504849, -621244368, -995264952, 580062932, -137596557, -473129994, 298328845, 248212468, -997517027, 509146210, -285021756, -962708514, 140213477, -933236970, 156503715, 11337436, 425577160, -12900058, 918455959, -186674498, -870979182, -770374389, -932281492, -992720116, -317151573, 728503632, 614689335, 417549455, -995199242, 807543660, 139572135, 274028237, 274996845, -118877438, 633758777, -133995579, 471396945, 274982217, 256803609, -870979275, 792324359, -932590026, 564444914, -269878264, 866017801, -135511646, 613106263, 936419980, 343263058, 637020805, -881253394, 776967162, 146101215, -281986571, -991523352, -992817660, 740691745, -951377005, -870979153, 143161766, -36532679, -870979217, 120581003, 317155732, -945978638, 910171293, 344924379, 65399226, 952299923, 131911966, 127022072, -935325820, -468549158, 333971949, 811674716, -991418080, -870979174, 213006608, -595925775, 156097125, -633883346, -592141162, -870979207, -828132079, 42873107, -870979220, 874318083, -870979170, -48330611, 202067164, -995031631, 296496570, 501524383, -994259373, -955542728, 361405280, -393118416, -89641074, -490426322, 545484226, 321908428, 345754502, -870979245, -118398510, -89907156, 269769650, 781172403, 370845895, -870979254, -653422810, 502512399, -195307639, -733072196, 551028412, 359884264, -993100302, 343524903, 581748765, 396605876, 321886473, 314157153, -932008078, -954584408, 514133388, -482061669, -931933709, 257328393, 308800172, 993515411, 923643686, -177509898, 666355919, -957476618, 596185882, 161964116, -932225013, -870979183, 778734657, 38187669, -305757437, -616382183, 248086249, 872537234, 522353521, 387898652, -867971882, -761788885, 577114128, -870979223, -935134851, 321751335, 404653170, 653457035, 826658898, -526787625, -819413015, -993740673, -609521704, 591628418, -994253179, 883340900, -399411267, -991011936, 343263787, 691292081, 235873054, 971462441, -810830114, -987785644, 731044826, -870979214, 344763256, -686997064, 972092606, -534920509, -910527632, 618232691, -962390662, 524794170, 341704812, -957264945, -964674924, -991637735, 343573848, -967824377, -994244722, 240763493, -870979258, -569391029, 622962804, -932036998, -465339019, -114468874, 842068933, 343556345, -994231670, -346523061, 625186755, 453565138, 191720933, 351363545, -870979209, -601964435, 830693899, -427886011, 90854352, -995273082, 92976194, 677049122, -874554325, 626054220, 891796679, 842123715, 200980433, 217300167, 617250330, 343526288, -994410494, -992460092, 272272443, 341050298, -321789722, 611404435, 321767864, -54657755, 685313675, -81968763, 158754745, 350678789, 617374615, 318231142, 391152775, -989144366, -950572750, 164368506, 309578520, -988399265, -994811470, 277786974, -993642998, -330571612, -870979200, 676583510, 496205825, 577838807, 408619001, -991689179, 343661941, 607697877, 303517924, -870979166, 623589496, -954854478, 320784350, -993057332, 279767354, 416143384, 526172591, -899097856, -757563626, 270077284, 321709349, 309055973, 461191782, 632836985, 996612676, 320477768, 856593002, 478577923, 350181217, 884938042, -424182545, 384010371, 633784520, -994426683, -848776966, 321455175, 557367817, -994211910, 342610617, -545053053, -870979215, -565597761, -870979178, 599482567, -860888966, 128964867, -125743457, 744388637, -870979163, -175495011, 42496934, -987764158, 343264069, 572802540, -870979228, -160123777, -991510829, 628340360, 489284372, 334555374, -238655486, -234866626, 888667756, -75135455, 581507616, 343245182, 462628974, -305776294, 609862015, 274978195, -1000000000, 110541120, 79463610, -257665582, 415680988, 320251562, 347548310, 279019258, -995268544, 1000000000, 86505204, 510924776, 343479561, 547501722],
########
'{
    "value": 221807748,
    "left": {
        "value": -990990382,
        "left": {
            "value": -994201300,
            "left": {
                "value": -995199219,
                "left": {
                    "value": -995265174,
                    "left": {
                        "value": -995281763,
                        "left": {
                            "value": -995295554,
                            "left": null,
                            "right": {
                                "value": -995287062,
                                "left": null,
                                "right": null
                            }
                        },
                        "right": {
                            "value": -995269755,
                            "left": {
                                "value": -995277598,
                                "left": null,
                                "right": null
                            },
                            "right": {
                                "value": -995267714,
                                "left": null,
                                "right": null
                            }
                        }
                    },
                    "right": {
                        "value": -995245297,
                        "left": {
                            "value": -995246257,
                            "left": {
                                "value": -995264552,
                                "left": null,
                                "right": {
                                    "value": -995263209,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": null
                        },
                        "right": {
                            "value": -995213546,
                            "left": {
                                "value": -995224178,
                                "left": null,
                                "right": {
                                    "value": -995216606,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": -995205954,
                                "left": null,
                                "right": null
                            }
                        }
                    }
                },
                "right": {
                    "value": -994295455,
                    "left": {
                        "value": -994562197,
                        "left": {
                            "value": -995081844,
                            "left": {
                                "value": -995166285,
                                "left": null,
                                "right": null
                            },
                            "right": null
                        },
                        "right": {
                            "value": -994385110,
                            "left": {
                                "value": -994395951,
                                "left": null,
                                "right": null
                            },
                            "right": {
                                "value": -994322817,
                                "left": {
                                    "value": -994367146,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": -994308705,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    },
                    "right": {
                        "value": -994243624,
                        "left": {
                            "value": -994266644,
                            "left": {
                                "value": -994269769,
                                "left": {
                                    "value": -994285094,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            },
                            "right": null
                        },
                        "right": {
                            "value": -994233406,
                            "left": null,
                            "right": null
                        }
                    }
                }
            },
            "right": {
                "value": -992744368,
                "left": {
                    "value": -993142739,
                    "left": {
                        "value": -993550243,
                        "left": {
                            "value": -993657636,
                            "left": {
                                "value": -993773158,
                                "left": {
                                    "value": -994006957,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            },
                            "right": {
                                "value": -993630840,
                                "left": null,
                                "right": null
                            }
                        },
                        "right": {
                            "value": -993498498,
                            "left": {
                                "value": -993526310,
                                "left": {
                                    "value": -993537749,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            },
                            "right": {
                                "value": -993248577,
                                "left": {
                                    "value": -993403104,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": -993233699,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    },
                    "right": {
                        "value": -993113065,
                        "left": {
                            "value": -993126398,
                            "left": {
                                "value": -993133564,
                                "left": null,
                                "right": null
                            },
                            "right": null
                        },
                        "right": {
                            "value": -993079555,
                            "left": null,
                            "right": {
                                "value": -992931616,
                                "left": null,
                                "right": null
                            }
                        }
                    }
                },
                "right": {
                    "value": -991655566,
                    "left": {
                        "value": -992515050,
                        "left": {
                            "value": -992585004,
                            "left": null,
                            "right": null
                        },
                        "right": null
                    },
                    "right": {
                        "value": -991379758,
                        "left": {
                            "value": -991494592,
                            "left": {
                                "value": -991497277,
                                "left": null,
                                "right": null
                            },
                            "right": null
                        },
                        "right": {
                            "value": -991026283,
                            "left": {
                                "value": -991132227,
                                "left": null,
                                "right": null
                            },
                            "right": null
                        }
                    }
                }
            }
        },
        "right": {
            "value": -932047082,
            "left": {
                "value": -937043898,
                "left": {
                    "value": -963189233,
                    "left": {
                        "value": -988321086,
                        "left": {
                            "value": -989346768,
                            "left": {
                                "value": -989449324,
                                "left": {
                                    "value": -990791684,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            },
                            "right": null
                        },
                        "right": {
                            "value": -967915158,
                            "left": {
                                "value": -987774362,
                                "left": {
                                    "value": -987896002,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": -986536174,
                                    "left": null,
                                    "right": {
                                        "value": -981305897,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -967843170,
                                "left": {
                                    "value": -967889461,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": -964722727,
                                    "left": {
                                        "value": -964971628,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            }
                        }
                    },
                    "right": {
                        "value": -955996413,
                        "left": {
                            "value": -960684763,
                            "left": {
                                "value": -962080027,
                                "left": {
                                    "value": -962649696,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            },
                            "right": {
                                "value": -957305485,
                                "left": null,
                                "right": null
                            }
                        },
                        "right": {
                            "value": -944051615,
                            "left": {
                                "value": -950954191,
                                "left": {
                                    "value": -953712611,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": -948541337,
                                    "left": null,
                                    "right": {
                                        "value": -945577706,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -937801179,
                                "left": {
                                    "value": -942440254,
                                    "left": null,
                                    "right": {
                                        "value": -939182843,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -937484227,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    }
                },
                "right": {
                    "value": -935437625,
                    "left": {
                        "value": -936835655,
                        "left": {
                            "value": -936895446,
                            "left": {
                                "value": -936933575,
                                "left": null,
                                "right": {
                                    "value": -936924657,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": -936837192,
                                "left": {
                                    "value": -936848757,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            }
                        },
                        "right": {
                            "value": -936715442,
                            "left": {
                                "value": -936788387,
                                "left": {
                                    "value": -936822782,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": -936732051,
                                    "left": {
                                        "value": -936745948,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -936724048,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -936008677,
                                "left": {
                                    "value": -936542996,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": -935654801,
                                    "left": null,
                                    "right": {
                                        "value": -935614652,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": -932435931,
                        "left": {
                            "value": -935092247,
                            "left": null,
                            "right": {
                                "value": -932619810,
                                "left": {
                                    "value": -932690165,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": -932504804,
                                    "left": {
                                        "value": -932547894,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            }
                        },
                        "right": {
                            "value": -932146423,
                            "left": {
                                "value": -932235798,
                                "left": {
                                    "value": -932267258,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            },
                            "right": {
                                "value": -932057316,
                                "left": {
                                    "value": -932108986,
                                    "left": null,
                                    "right": {
                                        "value": -932067692,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": null
                            }
                        }
                    }
                }
            },
            "right": {
                "value": 139496665,
                "left": {
                    "value": -116794092,
                    "left": {
                        "value": -547690037,
                        "left": {
                            "value": -620080304,
                            "left": {
                                "value": -870979154,
                                "left": {
                                    "value": -870979155,
                                    "left": {
                                        "value": -870979158,
                                        "left": {
                                            "value": -870979159,
                                            "left": {
                                                "value": -870979160,
                                                "left": {
                                                    "value": -870979161,
                                                    "left": {
                                                        "value": -870979164,
                                                        "left": {
                                                            "value": -870979165,
                                                            "left": {
                                                                "value": -870979168,
                                                                "left": {
                                                                    "value": -870979172,
                                                                    "left": {
                                                                        "value": -870979173,
                                                                        "left": {
                                                                            "value": -870979175,
                                                                            "left": {
                                                                                "value": -870979185,
                                                                                "left": {
                                                                                    "value": -870979186,
                                                                                    "left": {
                                                                                        "value": -870979187,
                                                                                        "left": {
                                                                                            "value": -870979188,
                                                                                            "left": {
                                                                                                "value": -870979190,
                                                                                                "left": {
                                                                                                    "value": -870979191,
                                                                                                    "left": {
                                                                                                        "value": -870979193,
                                                                                                        "left": {
                                                                                                            "value": -870979194,
                                                                                                            "left": {
                                                                                                                "value": -870979195,
                                                                                                                "left": {
                                                                                                                    "value": -870979196,
                                                                                                                    "left": {
                                                                                                                        "value": -870979197,
                                                                                                                        "left": {
                                                                                                                            "value": -870979198,
                                                                                                                            "left": {
                                                                                                                                "value": -870979201,
                                                                                                                                "left": {
                                                                                                                                    "value": -870979204,
                                                                                                                                    "left": {
                                                                                                                                        "value": -870979205,
                                                                                                                                        "left": {
                                                                                                                                            "value": -870979216,
                                                                                                                                            "left": {
                                                                                                                                                "value": -870979218,
                                                                                                                                                "left": {
                                                                                                                                                    "value": -870979219,
                                                                                                                                                    "left": {
                                                                                                                                                        "value": -870979221,
                                                                                                                                                        "left": {
                                                                                                                                                            "value": -870979225,
                                                                                                                                                            "left": {
                                                                                                                                                                "value": -870979229,
                                                                                                                                                                "left": {
                                                                                                                                                                    "value": -870979230,
                                                                                                                                                                    "left": {
                                                                                                                                                                        "value": -870979233,
                                                                                                                                                                        "left": {
                                                                                                                                                                            "value": -870979234,
                                                                                                                                                                            "left": {
                                                                                                                                                                                "value": -870979237,
                                                                                                                                                                                "left": {
                                                                                                                                                                                    "value": -870979238,
                                                                                                                                                                                    "left": {
                                                                                                                                                                                        "value": -870979239,
                                                                                                                                                                                        "left": {
                                                                                                                                                                                            "value": -870979240,
                                                                                                                                                                                            "left": {
                                                                                                                                                                                                "value": -870979241,
                                                                                                                                                                                                "left": {
                                                                                                                                                                                                    "value": -870979242,
                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                        "value": -870979243,
                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                            "value": -870979246,
                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                "value": -870979247,
                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                    "value": -870979248,
                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                        "value": -870979250,
                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                            "value": -870979256,
                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                "value": -870979257,
                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                    "value": -870979260,
                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                        "value": -870979261,
                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                            "value": -870979263,
                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                "value": -870979264,
                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                    "value": -870979269,
                                                                                                                                                                                                                                                    "left": {
                                                                                                                                                                                                                                                        "value": -870979270,
                                                                                                                                                                                                                                                        "left": {
                                                                                                                                                                                                                                                            "value": -870979273,
                                                                                                                                                                                                                                                            "left": {
                                                                                                                                                                                                                                                                "value": -870979274,
                                                                                                                                                                                                                                                                "left": {
                                                                                                                                                                                                                                                                    "value": -870979276,
                                                                                                                                                                                                                                                                    "left": null,
                                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                                },
                                                                                                                                                                                                                "right": null
                                                                                                                                                                                                            },
                                                                                                                                                                                                            "right": null
                                                                                                                                                                                                        },
                                                                                                                                                                                                        "right": null
                                                                                                                                                                                                    },
                                                                                                                                                                                                    "right": null
                                                                                                                                                                                                },
                                                                                                                                                                                                "right": null
                                                                                                                                                                                            },
                                                                                                                                                                                            "right": null
                                                                                                                                                                                        },
                                                                                                                                                                                        "right": null
                                                                                                                                                                                    },
                                                                                                                                                                                    "right": null
                                                                                                                                                                                },
                                                                                                                                                                                "right": null
                                                                                                                                                                            },
                                                                                                                                                                            "right": null
                                                                                                                                                                        },
                                                                                                                                                                        "right": null
                                                                                                                                                                    },
                                                                                                                                                                    "right": null
                                                                                                                                                                },
                                                                                                                                                                "right": null
                                                                                                                                                            },
                                                                                                                                                            "right": null
                                                                                                                                                        },
                                                                                                                                                        "right": null
                                                                                                                                                    },
                                                                                                                                                    "right": null
                                                                                                                                                },
                                                                                                                                                "right": null
                                                                                                                                            },
                                                                                                                                            "right": null
                                                                                                                                        },
                                                                                                                                        "right": null
                                                                                                                                    },
                                                                                                                                    "right": null
                                                                                                                                },
                                                                                                                                "right": null
                                                                                                                            },
                                                                                                                            "right": null
                                                                                                                        },
                                                                                                                        "right": null
                                                                                                                    },
                                                                                                                    "right": null
                                                                                                                },
                                                                                                                "right": null
                                                                                                            },
                                                                                                            "right": null
                                                                                                        },
                                                                                                        "right": null
                                                                                                    },
                                                                                                    "right": null
                                                                                                },
                                                                                                "right": null
                                                                                            },
                                                                                            "right": null
                                                                                        },
                                                                                        "right": null
                                                                                    },
                                                                                    "right": null
                                                                                },
                                                                                "right": null
                                                                            },
                                                                            "right": null
                                                                        },
                                                                        "right": null
                                                                    },
                                                                    "right": null
                                                                },
                                                                "right": null
                                                            },
                                                            "right": null
                                                        },
                                                        "right": null
                                                    },
                                                    "right": null
                                                },
                                                "right": null
                                            },
                                            "right": null
                                        },
                                        "right": null
                                    },
                                    "right": null
                                },
                                "right": {
                                    "value": -624500760,
                                    "left": {
                                        "value": -628231889,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            },
                            "right": {
                                "value": -608110784,
                                "left": {
                                    "value": -608318559,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": -581529830,
                                    "left": null,
                                    "right": {
                                        "value": -562720675,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": -328307409,
                            "left": {
                                "value": -534608050,
                                "left": {
                                    "value": -538517143,
                                    "left": {
                                        "value": -542833010,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -536927766,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": -428971026,
                                    "left": {
                                        "value": -485430049,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": -396328449,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": -159795548,
                                "left": {
                                    "value": -172731429,
                                    "left": {
                                        "value": -200534112,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                },
                                "right": {
                                    "value": -119623941,
                                    "left": {
                                        "value": -144441751,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            }
                        }
                    },
                    "right": {
                        "value": -43657152,
                        "left": {
                            "value": -56258798,
                            "left": {
                                "value": -58930074,
                                "left": {
                                    "value": -105549138,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": -56405741,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": -49362221,
                                "left": {
                                    "value": -50540116,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            }
                        },
                        "right": {
                            "value": 137657700,
                            "left": {
                                "value": 64948352,
                                "left": null,
                                "right": {
                                    "value": 125786198,
                                    "left": {
                                        "value": 121642899,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 131901712,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 139059933,
                                "left": {
                                    "value": 138646990,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 139285536,
                                    "left": null,
                                    "right": {
                                        "value": 139401660,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                },
                "right": {
                    "value": 156152886,
                    "left": {
                        "value": 143893207,
                        "left": {
                            "value": 139590972,
                            "left": {
                                "value": 139548978,
                                "left": null,
                                "right": {
                                    "value": 139572732,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 143366100,
                                "left": {
                                    "value": 140820931,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 143502112,
                                    "left": null,
                                    "right": null
                                }
                            }
                        },
                        "right": {
                            "value": 154473723,
                            "left": {
                                "value": 153367254,
                                "left": null,
                                "right": {
                                    "value": 153460819,
                                    "left": null,
                                    "right": {
                                        "value": 154239432,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 155656452,
                                "left": {
                                    "value": 155638458,
                                    "left": {
                                        "value": 155423570,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                },
                                "right": {
                                    "value": 156085421,
                                    "left": null,
                                    "right": {
                                        "value": 156128836,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 192259445,
                        "left": {
                            "value": 165040430,
                            "left": {
                                "value": 161525636,
                                "left": null,
                                "right": {
                                    "value": 164086279,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 173021150,
                                "left": {
                                    "value": 170737860,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 190789340,
                                    "left": {
                                        "value": 184990221,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            }
                        },
                        "right": {
                            "value": 213358504,
                            "left": {
                                "value": 212202526,
                                "left": {
                                    "value": 210849324,
                                    "left": {
                                        "value": 204833109,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                },
                                "right": {
                                    "value": 212808546,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 214222398,
                                "left": {
                                    "value": 214097828,
                                    "left": {
                                        "value": 213395995,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                },
                                "right": {
                                    "value": 218212873,
                                    "left": null,
                                    "right": {
                                        "value": 220507910,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    "right": {
        "value": 343663764,
        "left": {
            "value": 321314681,
            "left": {
                "value": 275006101,
                "left": {
                    "value": 258312075,
                    "left": {
                        "value": 255054797,
                        "left": {
                            "value": 235493466,
                            "left": {
                                "value": 225820506,
                                "left": {
                                    "value": 223128933,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 227194555,
                                    "left": null,
                                    "right": {
                                        "value": 232078836,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 236321088,
                                "left": null,
                                "right": {
                                    "value": 246214968,
                                    "left": null,
                                    "right": {
                                        "value": 248320665,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 257525658,
                            "left": {
                                "value": 255533651,
                                "left": null,
                                "right": {
                                    "value": 257191230,
                                    "left": {
                                        "value": 257167879,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 257566990,
                                "left": {
                                    "value": 257551645,
                                    "left": null,
                                    "right": {
                                        "value": 257556328,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": null
                            }
                        }
                    },
                    "right": {
                        "value": 273874169,
                        "left": {
                            "value": 270616137,
                            "left": {
                                "value": 269895426,
                                "left": null,
                                "right": null
                            },
                            "right": {
                                "value": 273852360,
                                "left": {
                                    "value": 273154953,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 273862724,
                                    "left": {
                                        "value": 273855675,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            }
                        },
                        "right": {
                            "value": 274926783,
                            "left": {
                                "value": 274008095,
                                "left": {
                                    "value": 273996085,
                                    "left": {
                                        "value": 273969991,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                },
                                "right": {
                                    "value": 274072567,
                                    "left": null,
                                    "right": {
                                        "value": 274801498,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 274994093,
                                "left": null,
                                "right": {
                                    "value": 275000175,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    }
                },
                "right": {
                    "value": 303144613,
                    "left": {
                        "value": 278966006,
                        "left": {
                            "value": 277798407,
                            "left": {
                                "value": 277690795,
                                "left": {
                                    "value": 276225134,
                                    "left": {
                                        "value": 275524368,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                },
                                "right": {
                                    "value": 277772835,
                                    "left": {
                                        "value": 277759377,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 278627816,
                                "left": {
                                    "value": 278033829,
                                    "left": null,
                                    "right": {
                                        "value": 278397899,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 278716937,
                                    "left": {
                                        "value": 278647224,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 278778011,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 279496240,
                            "left": {
                                "value": 279103095,
                                "left": {
                                    "value": 278995414,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 279344107,
                                    "left": {
                                        "value": 279311767,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 279388783,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 283217167,
                                "left": {
                                    "value": 281850316,
                                    "left": null,
                                    "right": {
                                        "value": 282174024,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 298533889,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 313329180,
                        "left": {
                            "value": 306324381,
                            "left": {
                                "value": 303921723,
                                "left": {
                                    "value": 303580722,
                                    "left": null,
                                    "right": {
                                        "value": 303748670,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 305327073,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 309020988,
                                "left": null,
                                "right": {
                                    "value": 311019697,
                                    "left": null,
                                    "right": null
                                }
                            }
                        },
                        "right": {
                            "value": 320207854,
                            "left": {
                                "value": 319275095,
                                "left": null,
                                "right": {
                                    "value": 320049435,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 320375518,
                                "left": {
                                    "value": 320329737,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 321207606,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    }
                }
            },
            "right": {
                "value": 339873389,
                "left": {
                    "value": 333748918,
                    "left": {
                        "value": 321929766,
                        "left": {
                            "value": 321720424,
                            "left": {
                                "value": 321699012,
                                "left": null,
                                "right": null
                            },
                            "right": {
                                "value": 321836453,
                                "left": {
                                    "value": 321799633,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            }
                        },
                        "right": {
                            "value": 322059073,
                            "left": {
                                "value": 322021579,
                                "left": {
                                    "value": 321968864,
                                    "left": null,
                                    "right": {
                                        "value": 321999083,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 322048919,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 328288760,
                                "left": {
                                    "value": 325823337,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 331746622,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 337113773,
                        "left": {
                            "value": 335711481,
                            "left": {
                                "value": 334200895,
                                "left": {
                                    "value": 334042313,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 335575788,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 336655978,
                                "left": {
                                    "value": 335821195,
                                    "left": null,
                                    "right": {
                                        "value": 336429191,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": null
                            }
                        },
                        "right": {
                            "value": 338119109,
                            "left": {
                                "value": 337140732,
                                "left": {
                                    "value": 337116660,
                                    "left": null,
                                    "right": {
                                        "value": 337135523,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 338077478,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 338289902,
                                "left": {
                                    "value": 338272199,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            }
                        }
                    }
                },
                "right": {
                    "value": 343286660,
                    "left": {
                        "value": 342921895,
                        "left": {
                            "value": 341710156,
                            "left": {
                                "value": 341685840,
                                "left": {
                                    "value": 341683701,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 341698404,
                                    "left": {
                                        "value": 341693938,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 342794301,
                                "left": null,
                                "right": null
                            }
                        },
                        "right": {
                            "value": 343232286,
                            "left": {
                                "value": 343195226,
                                "left": null,
                                "right": {
                                    "value": 343219902,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 343276440,
                                "left": {
                                    "value": 343275661,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            }
                        }
                    },
                    "right": {
                        "value": 343533620,
                        "left": {
                            "value": 343367756,
                            "left": {
                                "value": 343316780,
                                "left": {
                                    "value": 343314395,
                                    "left": {
                                        "value": 343304196,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                },
                                "right": null
                            },
                            "right": {
                                "value": 343492573,
                                "left": null,
                                "right": {
                                    "value": 343531974,
                                    "left": null,
                                    "right": null
                                }
                            }
                        },
                        "right": {
                            "value": 343612154,
                            "left": {
                                "value": 343546715,
                                "left": {
                                    "value": 343544574,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 343598243,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 343646763,
                                "left": {
                                    "value": 343636642,
                                    "left": null,
                                    "right": {
                                        "value": 343645635,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 343646873,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    }
                }
            }
        },
        "right": {
            "value": 606478687,
            "left": {
                "value": 471363126,
                "left": {
                    "value": 396143851,
                    "left": {
                        "value": 352193829,
                        "left": {
                            "value": 350461987,
                            "left": null,
                            "right": {
                                "value": 350855860,
                                "left": {
                                    "value": 350494845,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 350886868,
                                    "left": null,
                                    "right": null
                                }
                            }
                        },
                        "right": {
                            "value": 372892547,
                            "left": {
                                "value": 371399052,
                                "left": null,
                                "right": {
                                    "value": 372157991,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 392750269,
                                "left": {
                                    "value": 390565116,
                                    "left": null,
                                    "right": {
                                        "value": 392454065,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 392846730,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 418423800,
                        "left": {
                            "value": 409304277,
                            "left": {
                                "value": 404754013,
                                "left": null,
                                "right": {
                                    "value": 406858890,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 416060176,
                                "left": null,
                                "right": {
                                    "value": 417671578,
                                    "left": null,
                                    "right": {
                                        "value": 418411882,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 460540503,
                            "left": {
                                "value": 423424218,
                                "left": {
                                    "value": 422850677,
                                    "left": {
                                        "value": 419496115,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                },
                                "right": {
                                    "value": 433403643,
                                    "left": null,
                                    "right": {
                                        "value": 455010194,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 464057738,
                                "left": null,
                                "right": {
                                    "value": 464617093,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    }
                },
                "right": {
                    "value": 514343224,
                    "left": {
                        "value": 511173619,
                        "left": {
                            "value": 507295331,
                            "left": {
                                "value": 471415187,
                                "left": {
                                    "value": 471380915,
                                    "left": {
                                        "value": 471371552,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                },
                                "right": {
                                    "value": 489950796,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 509868486,
                                "left": {
                                    "value": 507802383,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 510850515,
                                    "left": null,
                                    "right": null
                                }
                            }
                        },
                        "right": {
                            "value": 514155957,
                            "left": {
                                "value": 514082278,
                                "left": {
                                    "value": 514069631,
                                    "left": {
                                        "value": 514068411,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 514081910,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": null
                            },
                            "right": {
                                "value": 514241835,
                                "left": {
                                    "value": 514216897,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 514307398,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 572756089,
                        "left": {
                            "value": 556614744,
                            "left": {
                                "value": 546348510,
                                "left": null,
                                "right": {
                                    "value": 547663603,
                                    "left": null,
                                    "right": {
                                        "value": 548946546,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 557011155,
                                "left": null,
                                "right": null
                            }
                        },
                        "right": {
                            "value": 578039592,
                            "left": {
                                "value": 577705603,
                                "left": {
                                    "value": 576857270,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            },
                            "right": {
                                "value": 586358454,
                                "left": {
                                    "value": 579855049,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 602692519,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    }
                }
            },
            "right": {
                "value": 636940266,
                "left": {
                    "value": 618047883,
                    "left": {
                        "value": 613241184,
                        "left": {
                            "value": 610914803,
                            "left": {
                                "value": 608915448,
                                "left": {
                                    "value": 608800253,
                                    "left": {
                                        "value": 608156814,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 608856413,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 609860336,
                                    "left": {
                                        "value": 609531732,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            },
                            "right": null
                        },
                        "right": {
                            "value": 616040255,
                            "left": {
                                "value": 614630818,
                                "left": {
                                    "value": 614395995,
                                    "left": {
                                        "value": 614030504,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                },
                                "right": {
                                    "value": 616014671,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 617558713,
                                "left": {
                                    "value": 617494703,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            }
                        }
                    },
                    "right": {
                        "value": 623341335,
                        "left": {
                            "value": 619510548,
                            "left": {
                                "value": 618518359,
                                "left": null,
                                "right": {
                                    "value": 618654421,
                                    "left": null,
                                    "right": {
                                        "value": 619249549,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 620695366,
                                "left": null,
                                "right": {
                                    "value": 622920386,
                                    "left": null,
                                    "right": null
                                }
                            }
                        },
                        "right": {
                            "value": 631116733,
                            "left": {
                                "value": 623458289,
                                "left": null,
                                "right": {
                                    "value": 629937466,
                                    "left": {
                                        "value": 628528351,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 630692917,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            },
                            "right": {
                                "value": 633442595,
                                "left": {
                                    "value": 632710631,
                                    "left": null,
                                    "right": {
                                        "value": 632744738,
                                        "left": null,
                                        "right": null
                                    }
                                },
                                "right": {
                                    "value": 636829334,
                                    "left": {
                                        "value": 635476084,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": {
                                        "value": 636913898,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        }
                    }
                },
                "right": {
                    "value": 826519659,
                    "left": {
                        "value": 672117235,
                        "left": {
                            "value": 639649755,
                            "left": {
                                "value": 638018210,
                                "left": null,
                                "right": {
                                    "value": 638204755,
                                    "left": {
                                        "value": 638044888,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 651172853,
                                "left": {
                                    "value": 643147577,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 658569504,
                                    "left": null,
                                    "right": {
                                        "value": 671010419,
                                        "left": null,
                                        "right": null
                                    }
                                }
                            }
                        },
                        "right": {
                            "value": 684337693,
                            "left": {
                                "value": 679273040,
                                "left": {
                                    "value": 677234482,
                                    "left": null,
                                    "right": null
                                },
                                "right": {
                                    "value": 680664462,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 687661810,
                                "left": null,
                                "right": {
                                    "value": 826419113,
                                    "left": {
                                        "value": 794090641,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                }
                            }
                        }
                    },
                    "right": {
                        "value": 871759806,
                        "left": {
                            "value": 853065495,
                            "left": {
                                "value": 826756127,
                                "left": {
                                    "value": 826562229,
                                    "left": {
                                        "value": 826550999,
                                        "left": null,
                                        "right": null
                                    },
                                    "right": null
                                },
                                "right": {
                                    "value": 832914444,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 871191622,
                                "left": {
                                    "value": 861642952,
                                    "left": null,
                                    "right": null
                                },
                                "right": null
                            }
                        },
                        "right": {
                            "value": 950193116,
                            "left": {
                                "value": 919039628,
                                "left": null,
                                "right": {
                                    "value": 941795946,
                                    "left": null,
                                    "right": null
                                }
                            },
                            "right": {
                                "value": 982763973,
                                "left": null,
                                "right": {
                                    "value": 999879525,
                                    "left": null,
                                    "right": null
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}'
       ]

    end
end