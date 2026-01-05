.class public final Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

.field public final synthetic val$callingUid:I

.field public final synthetic val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iput p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->val$callingUid:I

    return-void
.end method


# virtual methods
.method public final finalizeOnError(Landroid/app/appfunctions/AppFunctionException;J)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iget-object v1, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionException;->getErrorCode()I

    move-result v3

    iget v5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->val$callingUid:I

    const/4 v4, 0x0

    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->logAppFunctionsRequestReported(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIIJ)V

    return-void
.end method

.method public final finalizeOnSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;J)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iget-object v1, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iget v5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->val$callingUid:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->getResponseDataSize()I

    move-result v4

    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->logAppFunctionsRequestReported(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIIJ)V

    return-void
.end method
