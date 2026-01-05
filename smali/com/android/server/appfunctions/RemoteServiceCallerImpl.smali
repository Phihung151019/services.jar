.class public final Lcom/android/server/appfunctions/RemoteServiceCallerImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/appfunctions/RemoteServiceCaller;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mInterfaceConverter:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mInterfaceConverter:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;

    iput-object p3, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
