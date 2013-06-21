dckPlotBasic[x_,y_List,z_List,legenda_List] :=
(* x: function to Plot
   y: List with variable and start and end value
   z: List with Plolabel, AxesLabels
   legenda: List met legenda strings
   *)
    Plot[x,y,
        GridLines->Automatic,
        GridLinesStyle->Directive[LightGray,Dashed],
        PlotLabel->z[[1]],
        AxesLabel->{z[[2]],z[[3]]},
        ImageSize->500,
        AspectRatio->0.5,
        PlotLegends->legenda
    ]



