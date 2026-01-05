.class public final Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallerSigningInfo:Landroid/content/pm/SigningInfo;

.field public final mCancellationCallback:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;

.field public final mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

.field public final mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;


# direct methods
.method public constructor <init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/content/pm/SigningInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iput-object p3, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    iput-object p2, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mCancellationCallback:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;

    iput-object p4, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mCallerSigningInfo:Landroid/content/pm/SigningInfo;

    return-void
.end method
