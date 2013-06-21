dckPlotBasic[f_,            (* f: function to Plot                            *) 
	     X_List,        (* x: List with variable and start and end value  *)
	     z_List,        (* z: List with Plolabel en AxesLabel             *)
	     legenda_List   (* legenda: List met legenda strings              *)
	     ] :=
    Plot[F,X,
        GridLines->Automatic,
        GridLinesStyle->Directive[LightGray,Dashed],
        PlotLabel->z[[1]],
        AxesLabel->{z[[2]],z[[3]]},
        ImageSize->500,
        AspectRatio->0.5,
        PlotLegends->legenda
    ]



