.class public final Lcom/android/server/sepunion/SmartMeetingObserverService$3;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    iget-object p2, p2, Lcom/android/server/sepunion/SmartMeetingObserverService;->mPackageNameList:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    const/4 p2, 0x2

    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/SmartMeetingObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/SmartMeetingObserverService;IILandroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public final noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    iget-object p2, p2, Lcom/android/server/sepunion/SmartMeetingObserverService;->mPackageNameList:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    const/4 p2, 0x1

    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/SmartMeetingObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/SmartMeetingObserverService;IILandroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public final noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    iget-object p2, p2, Lcom/android/server/sepunion/SmartMeetingObserverService;->mPackageNameList:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    const/16 p2, 0x17

    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/SmartMeetingObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/SmartMeetingObserverService;IILandroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
