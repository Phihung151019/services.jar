.class public final synthetic Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    iput-object p2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    move-object v3, p0

    check-cast v3, Landroid/app/appfunctions/IAppFunctionService;

    :try_start_0
    iget-object p0, v2, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->setExecutionStartTimeAfterBindMillis(J)V

    iget-object p0, v2, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v4

    iget-object p0, v2, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mCallerSigningInfo:Landroid/content/pm/SigningInfo;

    iget-object v7, v2, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mCancellationCallback:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;

    new-instance v8, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;

    invoke-direct {v8, v2, v1}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;-><init>(Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V

    invoke-interface/range {v3 .. v8}, Landroid/app/appfunctions/IAppFunctionService;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    iget-object v0, v2, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    new-instance v2, Landroid/app/appfunctions/AppFunctionException;

    const/16 v3, 0xbb8

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    invoke-virtual {v1}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    return-void
.end method
