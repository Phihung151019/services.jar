.class public final Lcom/android/server/alarm/AlarmManagerService$5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    check-cast p2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    iget-wide p0, p1, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v0, p2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    check-cast p2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    iget-wide p0, p1, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v0, p2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    cmp-long p0, p0, v0

    if-gez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    if-lez p0, :cond_3

    const/4 p0, -0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
