from sklearn.ensemble import RandomForestClassifier

def buildModel(seed = 0):
    """ Build a Random Forest Model. The hyperparameters information can be get at 
    https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.RandomForestClassifier.html

    Args:
        seed (int, optional): Seed to the random numbers. Defaults to 1.

    Returns:
        RandomForestClassifier: Random Forest Model
    """

    model = RandomForestClassifier(
        n_estimators=100,
        criterion='gini',
        max_depth=None,
        min_samples_split=2,
        min_samples_leaf=1,
        min_weight_fraction_leaf=0.0,
        max_features='sqrt',
        max_leaf_nodes=None,
        min_impurity_decrease=0.0,
        bootstrap=True,
        oob_score=False,
        n_jobs=None,
        random_state=2**seed,
        verbose=0,
        warm_start=False,
        class_weight=None,
        ccp_alpha=0.0,
        max_samples=None
    )
    return model