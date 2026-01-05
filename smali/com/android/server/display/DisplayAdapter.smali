.class public abstract Lcom/android/server/display/DisplayAdapter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/display/DisplayAdapter$Listener;

.field public final mName:Ljava/lang/String;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iput-object p2, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    iput-object p5, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public final sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 1

    new-instance v0, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V

    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendTraversalRequestLocked()V
    .locals 1

    new-instance v0, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayAdapter;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
