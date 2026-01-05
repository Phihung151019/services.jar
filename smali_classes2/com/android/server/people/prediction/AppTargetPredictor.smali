.class public Lcom/android/server/people/prediction/AppTargetPredictor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mCallingUserId:I

.field public final mDataManager:Lcom/android/server/people/data/DataManager;

.field public final mPredictionContext:Landroid/app/prediction/AppPredictionContext;

.field public final mUpdatePredictionsMethod:Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    iput-object p2, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;

    iput-object p3, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    iput p4, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public getUpdatePredictionsMethod()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;

    return-object p0
.end method

.method public predictTargets()V
    .locals 0

    return-void
.end method

.method public reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 0

    return-void
.end method

.method public sortTargets(Ljava/util/List;Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    return-void
.end method
