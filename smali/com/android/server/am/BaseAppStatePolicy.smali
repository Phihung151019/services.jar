.class public abstract Lcom/android/server/am/BaseAppStatePolicy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDefaultTrackerEnabled:Z

.field public final mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

.field public final mKeyTrackerEnabled:Ljava/lang/String;

.field public final mTracker:Lcom/android/server/am/BaseAppStateTracker;

.field public volatile mTrackerEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iput-object p2, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    iput-object p3, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/am/BaseAppStatePolicy;->mDefaultTrackerEnabled:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    iget-boolean p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getProposedRestrictionLevel(IILjava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onPropertiesChanged(Ljava/lang/String;)V
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract onTrackerEnabled(Z)V
.end method

.method public updateTrackerEnabled()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mDefaultTrackerEnabled:Z

    const-string/jumbo v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseAppStatePolicy;->onTrackerEnabled(Z)V

    :cond_0
    return-void
.end method
