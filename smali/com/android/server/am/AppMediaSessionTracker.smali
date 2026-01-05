.class public final Lcom/android/server/am/AppMediaSessionTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field public final mSessionsChangedListener:Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;

.field public final mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    new-instance p1, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppMediaSessionTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mSessionsChangedListener:Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    new-instance p1, Landroid/os/HandlerExecutor;

    iget-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-direct {p1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance v0, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;

    const-string/jumbo v3, "bg_media_session_monitor_enabled"

    const/4 v4, 0x1

    const-string/jumbo v5, "bg_media_session_monitor_max_tracking_duration"

    const-wide/32 v6, 0x14997000

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V

    iput-object v0, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    return-void
.end method


# virtual methods
.method public final createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 1

    new-instance v0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    return-object v0
.end method

.method public final createAppStateEvents(Lcom/android/server/am/BaseAppStateDurations;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 0

    check-cast p1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    new-instance p0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateEvents;-><init>(Lcom/android/server/am/BaseAppStateDurations;)V

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APP MEDIA SESSION TRACKER:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final getType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method
