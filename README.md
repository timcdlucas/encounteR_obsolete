encounteR
==========

A package for estimating population densities using Random Encounter Models.



Installation
-------------

    library(devtools)
    install_github('timcdlucas/encounteR')
    library(encounteR)





Web App
-------

If you do not use R, a very basic [web app](https://timcdlucas.shinyapps.io/gremApp) is available.
It implements the gREM model (of which the REM model and gas models are special cases) but nothing else.


Road map
---------

Includes:
- gREM model
- REM model
- Gas model

Could include:
- 3D models
- Acoustic parameter estimation for gREM
- Varied environments
- Moving detectors





References
-----------

### Generalised Random Encounter Model:
Lucas, T. C. D., Moorcroft, E. A., Freeman, R., Rowcliffe, J. M., Jones, K. E. (2015), A generalised random encounter model for estimating animal density with remote sensor data. Methods in Ecology and Evolution. doi: [10.1111/2041-210X.12346](http://onlinelibrary.wiley.com/doi/10.1111/2041-210X.12346/full)

### Random Encounter Model:
Rowcliffe, J. M., Field, J., Turvey, S. T. and Carbone, C. (2008), Estimating animal density using camera traps without the need for individual recognition. Journal of Applied Ecology, 45: 1228–1236. doi: [10.1111/j.1365-2664.2008.01473.x](http://onlinelibrary.wiley.com/doi/10.1111/j.1365-2664.2008.01473.x/full)

### Gas Model:
Yapp, W. B. "The theory of line transects." Bird study 3.2 (1956): 93-104.
APA	[PDF](http://www.tandfonline.com/doi/pdf/10.1080/00063655609475840)

### Gas model review:

Hutchinson, J. M. C. and Waser, P. M. (2007), Use, misuse and extensions of “ideal gas” models of animal encounter. Biological Reviews, 82: 335–359. doi: [10.1111/j.1469-185X.2007.00014.x](http://onlinelibrary.wiley.com/doi/10.1111/j.1469-185X.2007.00014.x/abstract)



