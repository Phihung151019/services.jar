.class public final Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;
.super Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

.field public final synthetic val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    iput-object p2, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    invoke-direct {p0}, Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/app/appfunctions/AppFunctionException;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    iget-object v0, v0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    invoke-virtual {v0, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    iget-object p0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    invoke-virtual {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    return-void
.end method

.method public final onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    iget-object v0, v0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    invoke-virtual {v0, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    iget-object p0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    invoke-virtual {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    return-void
.end method
