(* 
This file contains functions to easily read, present en analyse data in an excel
file. The excel file needs to have a particular layout.

ToDo: make er een echte bibliotheek van.
*)


dckPlotBasic[f_,            (* f: function to Plot                            *) 
         x_List,        	(* x: List with variable and start and end value  *)
         z_List,        	(* z: List with Plolabel en AxesLabel             *)
         legenda_List   	(* legenda: List met legenda strings              *)
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
    Module[ {data},
        data = Import[file];
        { data[[2]], 
            Transpose[data[[1]][[{1,2,3}]]],
            data[[1]][[Range[13,Length[data[[1]] ] ] ]] }
    ]

dckDateListPlot[data_,n_] :=
    Module[ {},
        DateListPlot[Transpose[Transpose[data[[3]]][[{1, n}]]],
            PlotLabel->data[[2]][[n]][[2]]<>"\nfrom "<>DateString[data[[1]][[1, 2]]]<>
                " to "<>DateString[data[[1]][[2, 2]]],
            AxesLabel->{"Tijd",data[[2]][[n]][[3]]},
            ImageSize->500,
            AspectRatio->0.5
        ]
    ]
	
	
dckDynamicDatelistPlot[data_] :=
    DynamicModule[ {},
    	Manipulate[
    		dckDateListPlot[data,Position[data[[2]][[All, 2]], description][[1, 1]]],
    		{description, Drop[data[[2]][[All, 2]], 1]},
    		ControlType -> PopupMenu
    	]
    ]
