.class public final Lcom/android/server/sepunion/MinorModeObserverService$2;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/MinorModeObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/MinorModeObserverService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$2;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    return-void
.end method

.method public final noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService$2;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    const/4 p2, 0x1

    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/MinorModeObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/MinorModeObserverService;IILandroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public final noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService$2;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    const/16 p2, 0x17

    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/MinorModeObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/MinorModeObserverService;IILandroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
