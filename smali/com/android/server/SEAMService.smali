.class public final Lcom/android/server/SEAMService;
.super Lcom/samsung/android/knox/seams/ISEAMS$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static SELF_PID:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mSKHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/SEAMService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "SEAMService"

    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    new-instance v0, Lcom/android/server/SEAMService$BrHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/android/server/SEAMService$1;

    invoke-direct {p1, p0}, Lcom/android/server/SEAMService$1;-><init>(Lcom/android/server/SEAMService;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    sput p0, Lcom/android/server/SEAMService;->SELF_PID:I

    return-void
.end method


# virtual methods
.method public final isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget v0, Lcom/android/server/SEAMService;->SELF_PID:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()V

    sget-boolean v0, Lcom/android/server/ServiceKeeper;->isActive:Z

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p0, p3, p4}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
