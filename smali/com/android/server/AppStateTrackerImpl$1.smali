.class public final Lcom/android/server/AppStateTrackerImpl$1;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$1;->val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    return-void
.end method


# virtual methods
.method public final updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$1;->val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    return-void
.end method
