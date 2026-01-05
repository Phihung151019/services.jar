.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

.field public final synthetic f$4:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/ICancellationSignal;

.field public final synthetic f$7:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$2:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$3:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    iput-object p5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$4:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iput p6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$5:I

    iput-object p7, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$6:Landroid/os/ICancellationSignal;

    iput-object p8, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$7:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iget-object v2, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$2:Landroid/os/UserHandle;

    iget-object v13, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$3:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    iget-object v3, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$4:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iget v15, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$5:I

    iget-object v4, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$6:Landroid/os/ICancellationSignal;

    iget-object v12, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$7:Landroid/os/IBinder;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    sget v5, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    const v0, 0x4000001

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    iget-object v0, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

    invoke-interface {v0, v2, v7}, Lcom/android/server/appfunctions/ServiceHelper;->resolveAppFunctionService(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v16

    const/16 v2, 0x7d0

    if-nez v16, :cond_1

    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    const-string v1, "Cannot find the target service."

    invoke-direct {v0, v2, v1}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void

    :cond_1
    move/from16 v18, v15

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    iget-object v0, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v5, v8, v9, v15}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v17

    if-lez v17, :cond_2

    iget-object v0, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    const/16 v20, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    :cond_2
    move-object/from16 v5, v16

    invoke-static {v4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v10

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;

    invoke-direct {v0, v10}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;-><init>(Landroid/os/CancellationSignal;)V

    iget-object v4, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

    iget-object v8, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    check-cast v8, Lcom/android/server/appfunctions/ServiceConfigImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v8, "appfunctions"

    const-string/jumbo v9, "execute_app_function_cancellation_timeout_millis"

    const-wide/16 v14, 0x1388

    invoke-static {v8, v9, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    new-instance v11, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    invoke-virtual {v3}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move/from16 v15, v18

    const-wide/32 v17, 0x8000000

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    invoke-virtual/range {v14 .. v19}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(IIJLjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v11, v3, v0, v13, v1}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/content/pm/SigningInfo;)V

    check-cast v4, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    invoke-direct/range {v3 .. v12}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;Landroid/content/Intent;ILandroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;Landroid/os/IBinder;)V

    iget-object v0, v4, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V

    invoke-virtual {v10, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    new-instance v0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, v3}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V

    iput-object v0, v3, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mDirectServiceVulture:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v12, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to link to death on "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallerBinder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppFunctionsServiceCall"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    :goto_2
    if-nez v1, :cond_4

    const-string v0, "AppFunctionManagerServiceImpl"

    const-string v1, "Failed to bind to the AppFunctionService"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    const-string v1, "Failed to bind the AppFunctionService."

    invoke-direct {v0, v2, v1}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    :cond_4
    return-void
.end method
