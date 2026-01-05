.class public final synthetic Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/server/people/SessionInfo;

    sget p0, Lcom/android/server/people/PeopleService$LocalService;->$r8$clinit:I

    iget-object p0, p1, Lcom/android/server/people/SessionInfo;->mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

    iget-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
