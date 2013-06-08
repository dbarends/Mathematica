dckPlotBasic[x_,y_List,z_List,legenda_List] :=
    Plot[x,y,
        GridLines->Automatic,
        GridLinesStyle->Directive[LightGray,Dashed],
        PlotLabel->z[[1]],
        AxesLabel->{z[[2]],z[[3]]},
        ImageSize->500,
        AspectRatio->0.5,
        PlotLegends->legenda
    ]

(* Mathematica Raw Program *)

