local M = {}

M.metier = "Vitrerie"
M.ICON = "images/icons/vitrerie.png"

M.STRUCTURE = {
    id = "vitrerie",
    nom = "Vitrerie",
    type = "LOT",
    children = {
        {
                    id = "verres",
                    nom = "Verres",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "verres_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                        }
                    }
                },
        {
                    id = "verres_divers",
                    nom = "Verres divers",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "verres_divers_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "verre_type_polar_blanc_epaisseur_4_mm",
                                                                            nom = "Verre type Polar blanc, épaisseur 4 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 48.54,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.43,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 83.97,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_anti_reflet_epaisseur_2_mm",
                                                                            nom = "Verre anti-reflet, épaisseur 2 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 39.25,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.43,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 74.68,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "verres_coules",
                    nom = "Verres coulés",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "verres_coules_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "verre_martele_epaisseur_4_mm",
                                                                            nom = "Verre martelé, épaisseur 4 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 31.84,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.43,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 67.27,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_arme_epaisseur_6_mm",
                                                                            nom = "Verre armé, épaisseur 6 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 48.78,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 40.51,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 89.29,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_type_profilit_arme_epaisseur_6_mm",
                                                                            nom = "Verre type Profilit armé, épaisseur 6 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 70.26,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 40.51,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 110.77,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "verres_imprimes",
                    nom = "Verres imprimés",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "verres_imprimes_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "verre_type_stralio_martele_ou_similaire_epaisseur_6_mm",
                                                                            nom = "Verre type Stralio martelé ou similaire, épaisseur 6 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 43.71,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 39.33,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 83.04,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_type_astral_ou_similaire_epaisseur_5_mm",
                                                                            nom = "Verre type Astral ou similaire, épaisseur 5 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 37.84,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.43,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 73.27,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_imprime_type_77_ou_similaire_epaisseur_4_mm",
                                                                            nom = "Verre imprimé type 77 ou similaire, épaisseur 4 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 47.61,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 33.07,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 80.68,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_imprime_arme_type_77_ou_similaire_epaisseur_6_mm",
                                                                            nom = "Verre imprimé armé type 77 ou similaire, épaisseur 6 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 77.88,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 40.51,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 118.39,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_type_granit_200_epaisseur_4_mm",
                                                                            nom = "Verre type Granit 200, épaisseur 4 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 55.3,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 33.07,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 88.38,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_type_granit_200_epaisseur_6_mm",
                                                                            nom = "Verre type Granit 200, épaisseur 6 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 77.97,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 40.51,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 118.48,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_type_granit_200_epaisseur_8_mm",
                                                                            nom = "Verre type Granit 200, épaisseur 8 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 96.88,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 41.29,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 138.18,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_type_granit_200_epaisseur_10_mm",
                                                                            nom = "Verre type Granit 200, épaisseur 10 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 113.92,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 47.16,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 161.08,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "verres_colores",
                    nom = "Verres colorés",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "verres_colores_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "verre_diamante_bleu_epaisseur_5_mm",
                                                                            nom = "Verre diamanté bleu, épaisseur 5 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 73.57,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.43,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 109,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_fond_de_bouteille_jaune_epaisseur_5_mm",
                                                                            nom = "Verre fond de bouteille jaune, épaisseur 5 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 67.87,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.43,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 103.3,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_diamante_jaune_epaisseur_5_mm",
                                                                            nom = "Verre diamanté jaune, épaisseur 5 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 65.46,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.43,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 100.89,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_diamante_vert_epaisseur_5_mm",
                                                                            nom = "Verre diamanté vert, épaisseur 5 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 65.46,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.43,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 100.89,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_type_nouvel_antique_jaune_epaisseur_5_mm",
                                                                            nom = "Verre type Nouvel antique jaune, épaisseur 5 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 54.88,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 33.07,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 87.96,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_martele_jaune_epaisseur_4_mm",
                                                                            nom = "Verre martelé jaune, épaisseur 4 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 54.94,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 33.07,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 88.02,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "verres_feuilletes",
                    nom = "Verres feuilletés",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "verres_feuilletes_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "verre_type_stadip_clair_33_2_coupe_franche_epaisseur_6_mm",
                                                                            nom = "Verre type Stadip clair 33/2, coupe franche, épaisseur 6 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 106.69,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 41.29,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 147.99,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_type_stadip_clair_44_2_coupe_franche_epaisseur_8_mm",
                                                                            nom = "Verre type Stadip clair 44/2, coupe franche, épaisseur 8 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 113.43,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 43.24,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 156.67,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_type_stadip_clair_55_2_coupe_franche_epaisseur_10_mm",
                                                                            nom = "Verre type Stadip clair 55/2, coupe franche, épaisseur 10 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 134.68,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 45.19,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 179.88,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_type_stadip_bronze_33_2_coupe_franche_epaisseur_6_mm",
                                                                            nom = "Verre type Stadip bronze 33/2, coupe franche, épaisseur 6 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 159.4,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 41.29,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 0.7,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_type_stadip_bronze_44_2_coupe_franche_epaisseur_8_mm",
                                                                            nom = "Verre type Stadip bronze 44/2, coupe franche, épaisseur 8 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 166.39,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 43.24,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 9.64,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "vitrage_isolant",
                    nom = "Vitrage isolant",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "vitrage_isolant_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "vitrage_isolant",
                                                                            nom = "Vitrage isolant",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "epaisseur_3_6_3_mm_m",
                                                                                                                    nom = "épaisseur 3+6+3 mm\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 136.05,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_4_6_4_mm_m",
                                                                                                                    nom = "épaisseur 4+6+4 mm\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 147.91,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_5_6_5_mm_m",
                                                                                                                    nom = "épaisseur 5+6+5 mm\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 184.87,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_6_6_mm_m",
                                                                                                                    nom = "épaisseur 6+6+6 mm\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 13.25,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_8_6_mm_m",
                                                                                                                    nom = "épaisseur 6+8+6 mm\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 17.92,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_10_6_mm_m",
                                                                                                                    nom = "épaisseur 6+10+6 mm\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 30.34,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_12_6_mm_m",
                                                                                                                    nom = "épaisseur 6+12+6 mm\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "petits_carreaux",
                                                                            nom = "Petits carreaux",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "moins_de_0_10_m2_u",
                                                                                                                    nom = "moins de 0,10 m2\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 40.32,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "de_0_11_a_0_25_m2_u",
                                                                                                                    nom = "de 0,11 à 0,25/m2\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.05,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "glaces",
                    nom = "Glaces",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "glaces_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                        }
                    }
                },
        {
                    id = "glace_polie",
                    nom = "Glace polie",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "glace_polie_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "glace_claire",
                                                                            nom = "Glace claire",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "epaisseur_2_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "épaisseur 2 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 7.22,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_2_mm_coupe_franche_pose_m",
                                                                                                                    nom = "épaisseur 2 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.43,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_2_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 2 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 62.65,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_3_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "épaisseur 3 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 9.62,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_3_mm_coupe_franche_pose_m",
                                                                                                                    nom = "épaisseur 3 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 37.38,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_3_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 3 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 67,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_4_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "épaisseur 4 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 36,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_4_mm_coupe_franche_pose_m",
                                                                                                                    nom = "épaisseur 4 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 39.33,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_4_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 4 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 75.34,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_5_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "épaisseur 5 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 47.37,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_5_mm_coupe_franche_pose_m",
                                                                                                                    nom = "épaisseur 5 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 41.29,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_5_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 5 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 88.66,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "épaisseur 6 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 52.84,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_mm_coupe_franche_pose_m",
                                                                                                                    nom = "épaisseur 6 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 43.24,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 6 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 98.82,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_8_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "épaisseur 8 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 74.35,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_8_mm_coupe_franche_pose_m",
                                                                                                                    nom = "épaisseur 8 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 45.19,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_8_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 8 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 119.56,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_10_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "épaisseur 10 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 102.75,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_10_mm_coupe_franche_pose_m",
                                                                                                                    nom = "épaisseur 10 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 47.16,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_10_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 10 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 149.89,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_12_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "épaisseur 12 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 137.53,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_12_mm_coupe_franche_pose_m",
                                                                                                                    nom = "épaisseur 12 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 49.11,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_12_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 12 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 186.64,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_3_mm_bords_arrondis_fourniture_m",
                                                                                                                    nom = "épaisseur 3 mm, bords arrondis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 51.13,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_3_mm_bords_arrondis_pose_m",
                                                                                                                    nom = "épaisseur 3 mm, bords arrondis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 37.38,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_3_mm_bords_arrondis_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 3 mm, bords arrondis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 88.51,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_4_mm_bords_arrondis_fourniture_m",
                                                                                                                    nom = "épaisseur 4 mm, bords arrondis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 57.51,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_4_mm_bords_arrondis_pose_m",
                                                                                                                    nom = "épaisseur 4 mm, bords arrondis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 39.33,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_4_mm_bords_arrondis_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 4 mm, bords arrondis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 96.85,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_5_mm_bords_arrondis_fourniture_m",
                                                                                                                    nom = "épaisseur 5 mm, bords arrondis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 70.84,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_5_mm_bords_arrondis_pose_m",
                                                                                                                    nom = "épaisseur 5 mm, bords arrondis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 41.29,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_5_mm_bords_arrondis_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 5 mm, bords arrondis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 112.12,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_mm_bords_arrondis_fourniture_m",
                                                                                                                    nom = "épaisseur 6 mm, bords arrondis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 78.27,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_mm_bords_arrondis_pose_m",
                                                                                                                    nom = "épaisseur 6 mm, bords arrondis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 43.24,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_mm_bords_arrondis_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 6 mm, bords arrondis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 121.51,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_8_mm_bords_arrondis_fourniture_m",
                                                                                                                    nom = "épaisseur 8 mm, bords arrondis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 104.86,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_8_mm_bords_arrondis_pose_m",
                                                                                                                    nom = "épaisseur 8 mm, bords arrondis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 45.19,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_8_mm_bords_arrondis_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 8 mm, bords arrondis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 150.06,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_10_mm_bords_arrondis_fourniture_m",
                                                                                                                    nom = "épaisseur 10 mm, bords arrondis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 135.99,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_10_mm_bords_arrondis_pose_m",
                                                                                                                    nom = "épaisseur 10 mm, bords arrondis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 47.16,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_10_mm_bords_arrondis_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 10 mm, bords arrondis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 183.13,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_12_mm_bords_arrondis_fourniture_m",
                                                                                                                    nom = "épaisseur 12 mm, bords arrondis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 192.28,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_12_mm_bords_arrondis_pose_m",
                                                                                                                    nom = "épaisseur 12 mm, bords arrondis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 49.11,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_12_mm_bords_arrondis_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 12 mm, bords arrondis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 41.39,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "glace_de_4_mm_petits_carreaux_fourniture_et_pose_m",
                                                                                                                    nom = "Glace de 4 mm petits carreaux, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 13.02,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_arme_type_dravel_epaisseur_7_mm",
                                                                            nom = "Glace armé type Dravel, épaisseur 7 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "fourniture_m",
                                                                                                                    nom = "fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 8.35,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "pose_m",
                                                                                                                    nom = "pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 41.29,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "fourniture_et_pose_m",
                                                                                                                    nom = "fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 49.64,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_trempee",
                                                                            nom = "Glace trempée",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "epaisseur_6_mm_fourniture_m",
                                                                                                                    nom = "épaisseur 6 mm, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 156.67,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_mm_pose_m",
                                                                                                                    nom = "épaisseur 6 mm, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 43.24,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_mm_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 6 mm, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 199.92,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_8_mm_fourniture_m",
                                                                                                                    nom = "épaisseur 8 mm, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 16.7,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_8_mm_pose_m",
                                                                                                                    nom = "épaisseur 8 mm, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 47.16,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_8_mm_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 8 mm, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 63.86,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_10_mm_fourniture_m",
                                                                                                                    nom = "épaisseur 10 mm, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 69.59,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_10_mm_pose_m",
                                                                                                                    nom = "épaisseur 10 mm, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 49.11,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_10_mm_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 10 mm, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 318.7,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_type_parsol_trempe",
                                                                            nom = "Glace type Parsol trempé",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "epaisseur_6_mm_fourniture_m",
                                                                                                                    nom = "épaisseur 6 mm, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 192.18,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_mm_pose_m",
                                                                                                                    nom = "épaisseur 6 mm, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 43.24,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_6_mm_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 6 mm, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.42,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_8_mm_fourniture_m",
                                                                                                                    nom = "épaisseur 8 mm, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 85.33,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_8_mm_pose_m",
                                                                                                                    nom = "épaisseur 8 mm, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 47.16,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_8_mm_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 8 mm, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 332.49,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_10_mm_fourniture_m",
                                                                                                                    nom = "épaisseur 10 mm, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 360.03,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_10_mm_pose_m",
                                                                                                                    nom = "épaisseur 10 mm, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 49.11,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "epaisseur_10_mm_fourniture_et_pose_m",
                                                                                                                    nom = "épaisseur 10 mm, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 409.14,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "glace_teintee",
                    nom = "Glace teintée",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "glace_teintee_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "glace_type_parsol",
                                                                            nom = "Glace type Parsol",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "bronze_epaisseur_4_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "bronze épaisseur 4 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 60.42,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_4_mm_coupe_franche_pose_m",
                                                                                                                    nom = "bronze épaisseur 4 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 39.33,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_4_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "bronze épaisseur 4 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 99.76,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_5_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "bronze épaisseur 5 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 76.75,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_5_mm_coupe_franche_pose_m",
                                                                                                                    nom = "bronze épaisseur 5 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 41.29,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_5_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "bronze épaisseur 5 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 118.05,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_6_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "bronze épaisseur 6 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 100.17,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_6_mm_coupe_franche_pose_m",
                                                                                                                    nom = "bronze épaisseur 6 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 43.24,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_6_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "bronze épaisseur 6 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 143.41,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_8_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "bronze épaisseur 8 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 120.46,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_8_mm_coupe_franche_pose_m",
                                                                                                                    nom = "bronze épaisseur 8 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 47.16,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_8_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "bronze épaisseur 8 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 167.62,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_10_mm_coupe_franche_fourniture_m",
                                                                                                                    nom = "bronze épaisseur 10 mm, coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 157.59,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_10_mm_coupe_franche_pose_m",
                                                                                                                    nom = "bronze épaisseur 10 mm, coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 49.11,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_10_mm_coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "bronze épaisseur 10 mm, coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 6.7,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_4_mm_bords_polis_fourniture_m",
                                                                                                                    nom = "bronze épaisseur 4 mm, bords polis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 81.93,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_4_mm_bords_polis_pose_m",
                                                                                                                    nom = "bronze épaisseur 4 mm, bords polis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 39.33,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_4_mm_bords_polis_fourniture_et_pose_m",
                                                                                                                    nom = "bronze épaisseur 4 mm, bords polis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 121.27,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_5_mm_bords_polis_fourniture_m",
                                                                                                                    nom = "bronze épaisseur 5 mm, bords polis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 98.26,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_5_mm_bords_polis_pose_m",
                                                                                                                    nom = "bronze épaisseur 5 mm, bords polis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 41.29,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_5_mm_bords_polis_fourniture_et_pose_m",
                                                                                                                    nom = "bronze épaisseur 5 mm, bords polis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 139.56,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_6_mm_bords_polis_fourniture_m",
                                                                                                                    nom = "bronze épaisseur 6 mm, bords polis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 124.81,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_6_mm_bords_polis_pose_m",
                                                                                                                    nom = "bronze épaisseur 6 mm, bords polis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 43.24,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_6_mm_bords_polis_fourniture_et_pose_m",
                                                                                                                    nom = "bronze épaisseur 6 mm, bords polis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 168.06,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_8_mm_bords_polis_fourniture_m",
                                                                                                                    nom = "bronze épaisseur 8 mm, bords polis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 149.02,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_8_mm_bords_polis_pose_m",
                                                                                                                    nom = "bronze épaisseur 8 mm, bords polis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 47.16,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_8_mm_bords_polis_fourniture_et_pose_m",
                                                                                                                    nom = "bronze épaisseur 8 mm, bords polis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 196.17,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_10_mm_bords_polis_fourniture_m",
                                                                                                                    nom = "bronze épaisseur 10 mm, bords polis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 192.78,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_10_mm_bords_polis_pose_m",
                                                                                                                    nom = "bronze épaisseur 10 mm, bords polis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 49.11,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bronze_epaisseur_10_mm_bords_polis_fourniture_et_pose_m",
                                                                                                                    nom = "bronze épaisseur 10 mm, bords polis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 41.89,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "grise_epaisseur_5_mm_fourniture_m",
                                                                                                                    nom = "grise épaisseur 5 mm, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 89.68,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "grise_epaisseur_5_mm_pose_m",
                                                                                                                    nom = "grise épaisseur 5 mm, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 42.07,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "grise_epaisseur_5_mm_fourniture_et_pose_m",
                                                                                                                    nom = "grise épaisseur 5 mm, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 131.76,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_type_opaline_bords_polis",
                                                                            nom = "Glace type Opaline bords polis",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "blanche_fourniture_m",
                                                                                                                    nom = "blanche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 310.93,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "blanche_pose_m",
                                                                                                                    nom = "blanche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 44.02,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "blanche_fourniture_et_pose_m",
                                                                                                                    nom = "blanche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 354.96,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "noire_fourniture_m",
                                                                                                                    nom = "noire, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 303.22,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "noire_pose_m",
                                                                                                                    nom = "noire, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 44.02,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "noire_fourniture_et_pose_m",
                                                                                                                    nom = "noire, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 347.25,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "miroirs",
                    nom = "Miroirs",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "miroirs_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "glace_standard",
                                                                            nom = "Glace standard",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "48x36_cm_fourniture_u",
                                                                                                                    nom = "48x36 cm, fourniture\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 9.35,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "48x36_cm_pose_u",
                                                                                                                    nom = "48x36 cm, pose\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 39.1,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "48x36_cm_fourniture_et_pose_u",
                                                                                                                    nom = "48x36 cm, fourniture et pose\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 68.46,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "54x39_cm_fourniture_u",
                                                                                                                    nom = "54x39 cm, fourniture\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.68,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "54x39_cm_pose_u",
                                                                                                                    nom = "54x39 cm, pose\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 39.1,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "54x39_cm_fourniture_et_pose_u",
                                                                                                                    nom = "54x39 cm, fourniture et pose\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 74.79,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "60x42_cm_fourniture_u",
                                                                                                                    nom = "60x42 cm, fourniture\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 39.76,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "60x42_cm_pose_u",
                                                                                                                    nom = "60x42 cm, pose\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 39.1,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "60x42_cm_fourniture_et_pose_u",
                                                                                                                    nom = "60x42 cm, fourniture et pose\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 78.87,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_argentee_standard",
                                                                            nom = "Glace argentée standard",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "coupe_franche_fourniture_m",
                                                                                                                    nom = "coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 87.63,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "coupe_franche_pose_m",
                                                                                                                    nom = "coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 44.41,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 132.04,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bords_polis_fourniture_m",
                                                                                                                    nom = "bords polis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 114.61,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bords_polis_pose_m",
                                                                                                                    nom = "bords polis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 44.41,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bords_polis_fourniture_et_pose_m",
                                                                                                                    nom = "bords polis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 159.03,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_argentee_type_parsol_bronze",
                                                                            nom = "Glace argentée type Parsol bronze",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "coupe_franche_fourniture_m",
                                                                                                                    nom = "coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 133.9,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "coupe_franche_pose_m",
                                                                                                                    nom = "coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 44.41,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 178.32,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bords_polis_fourniture_m",
                                                                                                                    nom = "bords polis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 160.89,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bords_polis_pose_m",
                                                                                                                    nom = "bords polis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 44.41,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bords_polis_fourniture_et_pose_m",
                                                                                                                    nom = "bords polis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 5.3,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "verre_argentee_type_job",
                                                                            nom = "Verre argentée type Job",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "coupe_franche_fourniture_m",
                                                                                                                    nom = "coupe franche, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 64.06,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "coupe_franche_pose_m",
                                                                                                                    nom = "coupe franche, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 40.11,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "coupe_franche_fourniture_et_pose_m",
                                                                                                                    nom = "coupe franche, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 104.19,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bords_polis_fourniture_m",
                                                                                                                    nom = "bords polis, fourniture\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 91.05,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bords_polis_pose_m",
                                                                                                                    nom = "bords polis, pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 40.11,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "bords_polis_fourniture_et_pose_m",
                                                                                                                    nom = "bords polis, fourniture et pose\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 131.16,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "miroir_pour_salle_de_bain",
                                                                            nom = "Miroir pour salle de bain",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "type_glass_rond_diametre_600_mm_eclairant_u",
                                                                                                                    nom = "type Glass rond, diamètre 600 mm, éclairant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 182.31,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "type_glass_cosmetique_diametre_215_mm_eclairant_u",
                                                                                                                    nom = "type Glass cosmétique, diamètre 215 mm, éclairant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 153.33,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "type_glass_dimensions_450x800_mm_eclairant_u",
                                                                                                                    nom = "type Glass, dimensions 450x800 mm, éclairant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 180.36,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "type_glass_dimensions_750x800_mm_eclairant_u",
                                                                                                                    nom = "type Glass, dimensions 750x800 mm, éclairant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 35.23,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "type_glass_dimensions_600x800_mm_eclairant_u",
                                                                                                                    nom = "type Glass, dimensions 600x800 mm, éclairant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 12.16,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "type_glass_dimensions_1000x800_mm_eclairant_u",
                                                                                                                    nom = "type Glass, dimensions 1000x800 mm, éclairant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 75.34,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "type_glass_dimensions_1200x800_mm_eclairant_u",
                                                                                                                    nom = "type Glass, dimensions 1200x800 mm, éclairant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 313.23,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "type_glass_dimensions_1500x800_mm_eclairant_u",
                                                                                                                    nom = "type Glass, dimensions 1500x800 mm, éclairant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 350.68,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "porte_d_interieur_en_glace_trempee_securit",
                    nom = "Porte d'intérieur en glace trempée sécurit",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "porte_d_interieur_en_glace_trempee_securit_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                        }
                    }
                },
        {
                    id = "porte_securit_a_penture_1_vantail_glace_10_mm",
                    nom = "Porte sécurit à penture 1 vantail glace 10 mm",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "porte_securit_a_penture_1_vantail_glace_10_mm_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "glace_claire_avec_poignees_de_tirage",
                                                                            nom = "Glace claire avec poignées de tirage",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2100 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1046.63,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1070.46,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2200 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1057.55,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1084.35,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2100 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1059.87,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1083.71,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2200 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1070.79,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1097.6,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2100 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1079.25,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1103.09,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2200 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1090.17,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1116.98,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_poignees_en_dalle_de_verre_300x125_mm",
                                                                            nom = "Glace claire avec poignées en dalle de verre 300x125 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1234.04,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1246.95,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1260.84,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1223.12,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1234.5,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1245.42,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1258.34,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1272.23,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1248.72,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1259.64,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1272.56,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1286.45,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1198.82,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1209.74,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1222.65,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1236.54,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1209.75,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1220.67,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1233.59,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1247.48,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1224.03,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1234.95,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1247.87,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1261.76,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_poignees_en_dalle_de_verre_380x180_mm",
                                                                            nom = "Glace claire avec poignées en dalle de verre 380x180 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1425.86,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1436.78,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1449.69,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1463.58,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1439.07,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1449.99,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1462.91,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1476.8,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1457.22,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1468.14,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1481.06,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1494.95,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1301.54,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1312.46,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1325.37,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1339.26,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1313.64,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1324.56,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1337.48,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1351.37,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1329.84,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1340.76,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1353.68,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1367.57,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_poignees_de_tirage",
                                                                            nom = "Glace bronze avec poignées de tirage",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1141.46,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1150.14,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1154.7,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1163.39,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1174.08,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1182.77,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_poignees_en_dalle_de_verre_380x180_mm",
                                                                            nom = "Glace bronze avec poignées en dalle de verre 380x180 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1520.68,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1532.32,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1533.9,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1542.58,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1552.05,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1560.73,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1396.37,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1405.05,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1408.47,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1417.16,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1424.67,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1433.36,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_poignees_en_dalle_de_verre_300x125_mm",
                                                                            nom = "Glace bronze avec poignées en dalle de verre 300x125 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1317.95,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1326.63,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1329.33,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1338.02,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1343.55,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1352.24,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1293.65,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1302.33,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1304.58,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1313.27,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1318.86,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1327.55,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "porte_securit_a_paumelle_1_vantail_glace_8_mm",
                    nom = "Porte sécurit à paumelle 1 vantail glace 8 mm",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "porte_securit_a_paumelle_1_vantail_glace_8_mm_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bequilles",
                                                                            nom = "Glace claire avec serrure à béquilles",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 623.87,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 659.44,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 727x2104 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 635.95,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 668.17,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 598.4,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 633.97,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 727x2104 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 610.48,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 642.7,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 623.14,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 658.7,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 727x2104 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 635.21,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 667.43,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bequilles_a_condamnation",
                                                                            nom = "Glace claire avec serrure à béquilles à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 634.37,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 669.94,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 646.45,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 678.67,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bequilles_a_cylindre",
                                                                            nom = "Glace claire avec serrure à béquilles à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 664.01,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 699.58,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 676.09,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 708.31,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_boutons_tournants",
                                                                            nom = "Glace claire avec serrure à boutons tournants",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 664.45,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 700.01,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 676.52,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 708.74,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_boutons_tournants_a_condamnation",
                                                                            nom = "Glace claire avec serrure à boutons tournants à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 681.97,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 694.04,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 717.53,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 726.26,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_boutons_tournants_a_cylindre",
                                                                            nom = "Glace claire avec serrure à boutons tournants à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 690.4,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 702.47,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 725.96,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 734.69,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bequilles",
                                                                            nom = "Glace bronze avec serrure à béquilles",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 696.68,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 671.21,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 695.95,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 742.66,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 717.19,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 741.92,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bequilles_a_condamnation",
                                                                            nom = "Glace bronze avec serrure à béquilles à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 707.18,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 753.16,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bequilles_a_cylindre",
                                                                            nom = "Glace bronze avec serrure à béquilles à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 736.82,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 782.8,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_boutons_tournants",
                                                                            nom = "Glace bronze avec serrure à boutons tournants",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 737.26,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 783.23,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_boutons_tournants_a_condamnation",
                                                                            nom = "Glace bronze avec serrure à boutons tournants à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 754.78,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 800.75,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_boutons_tournants_a_cylindre",
                                                                            nom = "Glace bronze avec serrure à boutons tournants à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 763.21,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 809.18,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "porte_a_paumelle_1_vantail_glace_claire_8_mm",
                    nom = "Porte à paumelle 1 vantail glace claire 8 mm",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "porte_a_paumelle_1_vantail_glace_claire_8_mm_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bequilles",
                                                                            nom = "Glace claire avec serrure à béquilles",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 619.51,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 654.34,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 727x2104 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 629.56,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 659.44,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 594.04,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 628.87,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 727x2104 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 604.09,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 633.97,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 618.77,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 653.6,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 727x2104 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 628.82,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 658.7,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bequilles_a_condamnation",
                                                                            nom = "Glace claire avec serrure à béquilles à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 630.01,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 664.84,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 640.06,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 669.94,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bequilles_a_cylindre",
                                                                            nom = "Glace claire avec serrure à béquilles à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 659.65,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 694.48,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 669.7,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 699.58,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_boutons_tournants",
                                                                            nom = "Glace claire avec serrure à boutons tournants",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 660.08,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 670.13,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 694.91,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 700.01,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_boutons_tournants_a_condamnation",
                                                                            nom = "Glace claire avec serrure à boutons tournants à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 677.6,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 687.65,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 712.43,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 717.53,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_boutons_tournants_a_cylindre",
                                                                            nom = "Glace claire avec serrure à boutons tournants à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 686.03,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 696.08,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 720.86,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 725.96,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "porte_a_paumelle_1_vantail_glace_bronze_10_mm",
                    nom = "Porte à paumelle 1 vantail glace bronze 10 mm",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "porte_a_paumelle_1_vantail_glace_bronze_10_mm_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bequilles",
                                                                            nom = "Glace bronze avec serrure à béquilles",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 704.05,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 670.88,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 678.58,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 645.41,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 703.31,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 533.27,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bequilles_a_condamnation",
                                                                            nom = "Glace bronze avec serrure à béquilles à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 714.55,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 681.38,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bequilles_a_cylindre",
                                                                            nom = "Glace bronze avec serrure à béquilles à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 744.19,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 711.02,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bouton_tournants",
                                                                            nom = "Glace bronze avec serrure à bouton tournants",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 744.62,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 711.46,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bouton_tournants_a_condamnation",
                                                                            nom = "Glace bronze avec serrure à bouton tournants à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 762.14,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 728.98,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bouton_tournants_a_cylindre",
                                                                            nom = "Glace bronze avec serrure à bouton tournants à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 770.57,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 737.41,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "porte_securit_a_penture_2_vantaux_glace_10_mm",
                    nom = "Porte sécurit à penture 2 vantaux glace 10 mm",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "porte_securit_a_penture_2_vantaux_glace_10_mm_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "glace_claire_avec_poignees_de_tirage",
                                                                            nom = "Glace claire avec poignées de tirage",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2100 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1927.17,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2200 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1949.01,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1974.84,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 0.61,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2100 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1962.48,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2200 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1984.32,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 10.14,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 37.92,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2100 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1996.74,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2200 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 10.77,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 44.4,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 72.18,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_poignees_en_dalle_de_verre_300x125_mm",
                                                                            nom = "Glace claire avec poignées en dalle de verre 300x125 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 149.37,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 171.21,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 197.04,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 24.82,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 186.69,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 8.53,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 34.36,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 62.14,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 24.76,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 46.6,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 72.43,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 300.21,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 125.07,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 152.57,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 172.74,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 0.52,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 161.94,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 183.78,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 9.61,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 28.63,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 0.07,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 21.91,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 47.74,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 75.52,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_poignees_en_dalle_de_verre_380x180_mm",
                                                                            nom = "Glace claire avec poignées en dalle de verre 380x180 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 352.11,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 373.95,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 399.78,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 427.56,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 391.26,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 413.1,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 438.93,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 466.71,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 433.26,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 455.1,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 480.93,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 508.71,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 27.79,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 49.63,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 75.46,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 303.24,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 65.83,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 87.67,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 313.5,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 341.28,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 305.88,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 800x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 327.72,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 353.55,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 381.33,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_poignees_de_tirage",
                                                                            nom = "Glace bronze avec poignées de tirage",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 116.82,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 134.19,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 152.13,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 169.5,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 186.39,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 3.76,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_poignees_en_dalle_de_verre_300x125_mm",
                                                                            nom = "Glace bronze avec poignées en dalle de verre 300x125 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 339.03,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 320.36,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 376.35,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 393.72,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 414.42,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 431.79,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 314.73,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 332.1,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 351.6,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 368.97,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 389.73,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 407.1,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_poignees_en_dalle_de_verre_380x180_mm",
                                                                            nom = "Glace bronze avec poignées en dalle de verre 380x180 mm",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 541.77,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 559.14,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 580.92,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 598.29,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 622.92,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_rouges_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées rouges, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 640.29,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 426.65,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 434.82,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 455.49,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 472.86,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2100 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 495.54,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_poignees_bleues_vertes_grises_ou_jaunes_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 900x2200 mm, poignées bleues, vertes, grises ou jaunes, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 512.91,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "porte_securit_a_paumelle_2_vantaux_glace_8_mm",
                    nom = "Porte sécurit à paumelle 2 vantaux glace 8 mm",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "porte_securit_a_paumelle_2_vantaux_glace_8_mm_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bequilles",
                                                                            nom = "Glace claire avec serrure à béquilles",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1150.73,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1221.86,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 727x2104 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1174.88,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1239.32,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1119.42,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1190.55,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 727x2104 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1143.57,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1208.01,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1200.78,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1271.91,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 727x2104 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1237.58,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1289.37,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bequilles_a_condamnation",
                                                                            nom = "Glace claire avec serrure à béquilles à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1161.23,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1232.36,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1185.38,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1249.82,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bequilles_a_cylindre",
                                                                            nom = "Glace claire avec serrure à béquilles à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1190.87,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1262,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1215.02,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1279.46,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bouton_tournants",
                                                                            nom = "Glace claire avec serrure à bouton tournants",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1191.3,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1262.43,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1215.45,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1279.89,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bouton_tournants_a_condamnation",
                                                                            nom = "Glace claire avec serrure à bouton tournants à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1208.82,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1232.97,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1279.95,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1297.41,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bouton_tournants_a_cylindre",
                                                                            nom = "Glace claire avec serrure à bouton tournants à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1217.25,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1288.38,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1241.4,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1305.84,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bequilles",
                                                                            nom = "Glace bronze avec serrure à béquilles",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1296.35,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1388.3,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1265.04,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1356.99,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1346.4,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1438.35,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bequilles_a_condamnation",
                                                                            nom = "Glace bronze avec serrure à béquilles à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1306.85,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1398.8,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bequilles_a_cylindre",
                                                                            nom = "Glace bronze avec serrure à béquilles à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1336.49,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1428.44,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bouton_tournants",
                                                                            nom = "Glace bronze avec serrure à bouton tournants",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1336.92,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1428.87,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bouton_tournants_a_condamnation",
                                                                            nom = "Glace bronze avec serrure à bouton tournants à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1354.44,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1446.39,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bouton_tournants_a_cylindre",
                                                                            nom = "Glace bronze avec serrure à bouton tournants à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1362.87,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1454.82,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "porte_a_paumelle_2_vantaux_glace_claire_8_mm",
                    nom = "Porte à paumelle 2 vantaux glace claire 8 mm",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "porte_a_paumelle_2_vantaux_glace_claire_8_mm_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bequilles",
                                                                            nom = "Glace claire avec serrure à béquilles",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1142,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1211.66,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 727x2104 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1162.1,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1221.86,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1110.69,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1180.35,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 727x2104 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1130.79,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1190.55,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1192.05,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1261.71,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 727x2104 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1212.15,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 827x2104 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1271.91,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bequilles_a_condamnation",
                                                                            nom = "Glace claire avec serrure à béquilles à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1152.5,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1222.16,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1172.6,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1232.36,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_bequilles_a_cylindre",
                                                                            nom = "Glace claire avec serrure à béquilles à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1182.14,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1251.8,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1202.24,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1262,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_boutons_tournants",
                                                                            nom = "Glace claire avec serrure à boutons tournants",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1182.57,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1252.23,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1202.67,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1262.43,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_boutons_tournants_a_condamnation",
                                                                            nom = "Glace claire avec serrure à boutons tournants à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1200.09,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1269.75,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1220.19,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1279.95,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_claire_avec_serrure_a_boutons_tournants_a_cylindre",
                                                                            nom = "Glace claire avec serrure à boutons tournants à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1208.52,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_u",
                                                                                                                    nom = "dimensions 827x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1278.18,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2104_mm_u",
                                                                                                                    nom = "dimensions 727x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1228.62,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1288.38,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "porte_a_paumelle_2_vantaux_glace_bronze_10_mm",
                    nom = "Porte à paumelle 2 vantaux glace bronze 10 mm",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "porte_a_paumelle_2_vantaux_glace_bronze_10_mm_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bequilles",
                                                                            nom = "Glace bronze avec serrure à béquilles",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1311.08,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_en_laiton_poli_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie en laiton poli\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1244.75,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1279.77,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2034_mm_quincaillerie_chrome_brillant_u",
                                                                                                                    nom = "dimensions 827x2034 mm, quincaillerie chromé brillant\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1213.44,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 727x2034 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1361.13,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2004_mm_quincaillerie_chrome_mat_u",
                                                                                                                    nom = "dimensions 827x2004 mm, quincaillerie chromé mat\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1294.8,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bequilles_a_condamnation",
                                                                            nom = "Glace bronze avec serrure à béquilles à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1321.58,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1269.23,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bequilles_a_cylindre",
                                                                            nom = "Glace bronze avec serrure à béquilles à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1351.22,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1284.89,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bouton_tournants",
                                                                            nom = "Glace bronze avec serrure à bouton tournants",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1351.65,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1285.32,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bouton_tournants_a_condamnation",
                                                                            nom = "Glace bronze avec serrure à bouton tournants à condamnation",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1369.17,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1302.84,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "glace_bronze_avec_serrure_a_bouton_tournants_a_cylindre",
                                                                            nom = "Glace bronze avec serrure à bouton tournants à cylindre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_727x2034_mm_u",
                                                                                                                    nom = "dimensions 727x2034 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1377.6,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_827x2104_mm_u",
                                                                                                                    nom = "dimensions 827x2104 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1311.27,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "porte_type_lineal",
                    nom = "Porte type Linéal",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "porte_type_lineal_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "porte_type_lineal_1_vantail_avec_plinthe_basse",
                                                                            nom = "Porte type Linéal 1 vantail avec plinthe basse",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_u",
                                                                                                                    nom = "dimensions 800x2100 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1018.1,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_u",
                                                                                                                    nom = "dimensions 900x2100 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1039.05,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_u",
                                                                                                                    nom = "dimensions 800x2200 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1023.56,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_u",
                                                                                                                    nom = "dimensions 900x2200 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1049.64,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "porte_type_lineal_1_vantail_avec_plinthe_basse_et_traverse_haute",
                                                                            nom = "Porte type Linéal 1 vantail avec plinthe basse et traverse haute",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_u",
                                                                                                                    nom = "dimensions 800x2100 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1115.1,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_u",
                                                                                                                    nom = "dimensions 900x2100 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1126.58,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_u",
                                                                                                                    nom = "dimensions 800x2200 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1124.51,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_u",
                                                                                                                    nom = "dimensions 900x2200 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 1136.79,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "porte_type_lineal_2_vantaux_avec_plinthe_basse",
                                                                            nom = "Porte type Linéal 2 vantaux avec plinthe basse",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_u",
                                                                                                                    nom = "dimensions 800x2100 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 24,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_u",
                                                                                                                    nom = "dimensions 900x2100 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 65.9,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_u",
                                                                                                                    nom = "dimensions 800x2200 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 40.44,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_u",
                                                                                                                    nom = "dimensions 900x2200 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 87.08,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "porte_type_lineal_2_vantaux_avec_plinthe_basse_et_traverse_haute",
                                                                            nom = "Porte type Linéal 2 vantaux avec plinthe basse et traverse haute",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "dimensions_800x2100_mm_u",
                                                                                                                    nom = "dimensions 800x2100 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 177.87,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2100_mm_u",
                                                                                                                    nom = "dimensions 900x2100 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 0.84,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_800x2200_mm_u",
                                                                                                                    nom = "dimensions 800x2200 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 198.75,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "dimensions_900x2200_mm_u",
                                                                                                                    nom = "dimensions 900x2200 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 22.29,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "dormants_et_huisseries",
                    nom = "Dormants et huisseries",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "dormants_et_huisseries_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "dormant_aluminium",
                                                                            nom = "Dormant aluminium",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "portes_en_glace_1_vantail_u",
                                                                                                                    nom = "portes en glace, 1 vantail\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 67.73,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "portes_en_glace_2_vantaux_u",
                                                                                                                    nom = "portes en glace, 2 vantaux\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 313.24,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "dormant_bois",
                                                                            nom = "Dormant bois",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "portes_en_glace_1_vantail_u",
                                                                                                                    nom = "portes en glace, 1 vantail\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 139.63,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "portes_en_glace_2_vantaux_u",
                                                                                                                    nom = "portes en glace, 2 vantaux\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 167.68,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "huisserie_metallique",
                                                                            nom = "Huisserie metallique",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "portes_en_glace_1_vantail_u",
                                                                                                                    nom = "portes en glace, 1 vantail\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 150.7,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "portes_en_glace_2_vantaux_u",
                                                                                                                    nom = "portes en glace, 2 vantaux\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 191.73,
                                                                                                                    unite = "U",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                },
        {
                    id = "entretien",
                    nom = "Entretien",
                    type = "CHAPITRE",
                    children = {
                        {
                                            id = "entretien_famille",
                                            nom = "Famille",
                                            type = "FAMILLE",
                                            children = {
                                                {
                                                                            id = "depose_de_verre",
                                                                            nom = "Dépose de verre",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "grand_vitrage_a_conserver_m",
                                                                                                                    nom = "grand vitrage à conserver\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 4.45,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "grand_vitrage_a_remplacer_m",
                                                                                                                    nom = "grand vitrage à remplacer\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 16.21,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "petit_bois_non_conserve_m",
                                                                                                                    nom = "petit bois non conservé\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 19.51,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "depose_et_repose_de_grillage_de_protection_m",
                                                                                                                    nom = "Dépose et repose de grillage de protection\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 14.65,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "nettoyage_de_souillures_sur_vitrage_m",
                                                                                                                    nom = "Nettoyage de souillures sur vitrage\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 4.95,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "reargenture_glaces_m",
                                                                                                                    nom = "Réargenture glaces\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 117.31,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        },
                                                {
                                                                            id = "remplacement_vitrerie",
                                                                            nom = "Remplacement vitrerie",
                                                                            type = "OUVRAGE",
                                                                            children = {
                                                                                {
                                                                                                                    id = "petit_carreau_epaisseur_4_mm_u",
                                                                                                                    nom = "petit carreau, épaisseur 4 mm\tU",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 0.98,
                                                                                                                    unite = "U",
                                                                                                                },
                                                                                {
                                                                                                                    id = "grand_carreau_epaisseur_6_mm_m",
                                                                                                                    nom = "grand carreau, épaisseur 6 mm\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 193.48,
                                                                                                                    unite = "m2",
                                                                                                                },
                                                                                {
                                                                                                                    id = "revision_partielle_de_mastic_m",
                                                                                                                    nom = "Révision partielle de mastic\tm",
                                                                                                                    type = "ARTICLE",
                                                                                                                    prix = 6.03,
                                                                                                                    unite = "m2",
                                                                                                                }
                                                                            }
                                                                        }
                                            }
                                        }
                    }
                }
    }
}

return M
