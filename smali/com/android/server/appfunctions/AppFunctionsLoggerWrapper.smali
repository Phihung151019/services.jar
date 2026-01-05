.class public Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final SUCCESS_RESPONSE_CODE:I = -0x1


# instance fields
.field public final mLoggerClock:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;

.field public final mLoggingExecutor:Ljava/util/concurrent/Executor;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mLoggingExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mLoggerClock:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;

    return-void
.end method


# virtual methods
.method public final logAppFunctionsRequestReported(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIIJ)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mLoggerClock:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;

    check-cast v0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getRequestTime()J

    move-result-wide v4

    sub-long v6, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v0, p5, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getRequestTime()J

    move-result-wide v2

    sub-long v2, p5, v2

    move-wide v8, v2

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    iget-object v10, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mLoggingExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v2, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;ILandroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJJ)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
