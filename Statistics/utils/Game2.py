from . import Game



def getCharts(titulo, fig, data0, models, labelY, xLabels, metricType):
    """Get the charts about the Game 2

    Args:
        titulo (str): Title of the chart
        fig (Figure): Figure to plot the chart.
        data0 (DataFrame): Baseline data
        models (array): Name of the models
        labelY (str): Label to the Y-Axis
        xLabels (array): Labels to the X-Axis.
        metricType (str): 'acc' to accuracy and 'f1' to f1-score. Defaults to "acc".

    Returns:
        dict: Data about the Game 2
    """
    game2 = {}
    game, data = Game.getAverages("OLLVMO0", models, metricType)
    game2["OLLVM"] = game
    ax1 = Game.makeSingleChart(
        letter="a", df=data, fig=fig, coord=241, barLabel="OLLVM", 
        titulo=titulo, labelY=labelY, game0=data0, hideX=True, xLabels=xLabels
    )

    game, data = Game.getAverages("FLAO0", models, metricType)
    game2["OLLVMFLA"] = game
    Game.makeSingleChart(
        letter="b", df=data, fig=fig, coord=242, barLabel="OLLVMFLA", xLabels=xLabels,
        titulo=titulo, labelY=labelY, shareAxY=ax1, game0=data0, hideY=True, hideX=True
    )

    game, data = Game.getAverages("OJCloneO3", models, metricType)
    game2["O3"] = game
    Game.makeSingleChart(
        letter="c", df=data, fig=fig, coord=243, barLabel="O3", xLabels=xLabels,
        titulo=titulo, labelY=labelY, shareAxY=ax1, game0=data0, hideY=True, hideX=True
    )

    game, data = Game.getAverages("MCMCO0", models, metricType)
    game2["MCMC"] = game
    Game.makeSingleChart(
        letter="d", df=data, fig=fig, coord=244, barLabel="MCMC", xLabels=xLabels,
        titulo=titulo, labelY=labelY, shareAxY=ax1, game0=data0, hideY=True, hideX=True
    )

    game, data = Game.getAverages("SUBO0", models, metricType)
    game2["OLLVMSUB"] = game
    ax5 = Game.makeSingleChart(
        letter="e", df=data, fig=fig, coord=245, barLabel="OLLVMSUB", xLabels=xLabels,
        titulo=titulo, labelY=labelY, game0=data0
    )

    game, data = Game.getAverages("BCFO0", models, metricType)
    game2["OLLVMBCF"] = game
    Game.makeSingleChart(
        letter="f", df=data, fig=fig, coord=246, barLabel="OLLVMBCF", xLabels=xLabels,
        titulo=titulo, labelY=labelY, shareAxY=ax5, game0=data0, hideY=True
    )
    
    game, data = Game.getAverages("DRLSGO0", models, metricType)
    game2["DRLSG"] = game
    Game.makeSingleChart(
        letter="g", df=data, fig=fig, coord=247, barLabel="DRLSG", xLabels=xLabels,
        titulo=titulo, labelY=labelY, shareAxY=ax5, game0=data0, hideY=True
    )
    
    game, data = Game.getAverages("RSO0", models, metricType)
    game2["RS"] = game
    Game.makeSingleChart(
        letter="h", df=data, fig=fig, coord=248, barLabel="RS", xLabels=xLabels,
        titulo=titulo, labelY=labelY, shareAxY=ax5, game0=data0, hideY=True
    )

    return game2