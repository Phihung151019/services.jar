.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

.field public final synthetic f$1:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/ICancellationSignal;

.field public final synthetic f$5:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

.field public final synthetic f$6:Landroid/app/appfunctions/IExecuteAppFunctionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$1:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iput p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$3:I

    iput-object p5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$4:Landroid/os/ICancellationSignal;

    iput-object p6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$5:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    iput-object p7, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$6:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$1:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iget v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$2:I

    iget v3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$3:I

    iget-object v4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$4:Landroid/os/ICancellationSignal;

    iget-object v5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$5:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;->f$6:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    sget v6, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->$r8$clinit:I

    :try_start_0
    invoke-interface {p0}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->executeAppFunctionInternal(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void
.end method
