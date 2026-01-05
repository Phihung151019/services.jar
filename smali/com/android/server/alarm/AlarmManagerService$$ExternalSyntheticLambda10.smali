.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p3, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$0:I

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService;

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$0:I

    check-cast p1, Lcom/android/server/alarm/Alarm;

    sget-object v3, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v3, p0, :cond_0

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0, p1}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$0:I

    check-cast p1, Lcom/android/server/alarm/Alarm;

    iget-object v3, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget p1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_1
    iget v2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$0:I

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/android/server/alarm/Alarm;

    sget-object v3, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    iget v3, p1, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v3, v2, :cond_2

    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-wide p0, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
