.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    check-cast p1, Lcom/android/server/alarm/Alarm;

    check-cast p2, Lcom/android/server/alarm/Alarm;

    sget-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eq v0, v3, :cond_2

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_2
    iget v0, p1, Lcom/android/server/alarm/Alarm;->priorityClass:I

    iget v3, p2, Lcom/android/server/alarm/Alarm;->priorityClass:I

    if-ge v0, v3, :cond_3

    goto :goto_4

    :cond_3
    if-le v0, v3, :cond_4

    goto :goto_5

    :cond_4
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Lcom/android/server/alarm/AlarmManagerService$2;

    if-ne v0, p0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    iget-object v3, p2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-ne v3, p0, :cond_6

    move p0, v2

    goto :goto_3

    :cond_6
    move p0, v1

    :goto_3
    if-eq v0, p0, :cond_7

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_7
    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide p0, p0, v1

    iget-object p2, p2, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v3, p2, v1

    cmp-long p0, p0, v3

    if-gez p0, :cond_8

    :goto_4
    const/4 p0, -0x1

    return p0

    :cond_8
    if-lez p0, :cond_a

    :cond_9
    :goto_5
    return v2

    :cond_a
    return v1
.end method
