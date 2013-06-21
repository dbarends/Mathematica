dckPlotBasic[f_,            (* f: function to Plot                            *) 
	     x_List,        (* x: List with variable and start and end value  *)
	     z_List,        (* z: List with Plolabel en AxesLabel             *)
	     legenda_List   (* legenda: List met legenda strings              *)
	     ] :=
    Plot[f,x,
        GridLines->Automatic,
        GridLinesStyle->Directive[LightGray,Dashed],
        PlotLabel->z[[1]],
        AxesLabel->{z[[2]],z[[3]]},
        ImageSize->500,
        AspectRatio->0.5,
        PlotLegends->legenda
    ]


dckReadPIData[file_String    (* Name of the data file *) ] :=
Module[{data},
	data = Import[file];
	{ data[[2]], 
		Transpose[data[[1]][[{1,2}]]],
		data[[1]][[Range[13,Length[data[[1]] ] ] ]] }
]
