.class public abstract Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHistory:Lcom/android/server/am/BroadcastHistory;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    return-void
.end method

.method public static checkState(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static logw(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BroadcastQueue"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-wide/16 v1, 0x40

    const-string v3, "BroadcastQueue"

    invoke-static {v1, v2, v3, p0, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return v0
.end method

.method public static traceEnd(I)V
    .locals 3

    const-wide/16 v0, 0x40

    const-string v2, "BroadcastQueue"

    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method
