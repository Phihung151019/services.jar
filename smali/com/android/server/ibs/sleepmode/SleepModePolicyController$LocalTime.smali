.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final hourOfDay:I

.field public final minute:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    const/16 v0, 0x17

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_0

    const/16 v0, 0x3b

    if-gt p2, v0, :cond_0

    iput p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    iput p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid minute: "

    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid hourOfDay: "

    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;
    .locals 4

    const-wide/16 v0, 0x3c

    div-long v2, p0, v0

    long-to-int v2, v2

    rem-long/2addr p0, v0

    long-to-int p0, p0

    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-direct {p1, v2, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;-><init>(II)V

    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    iget v3, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    iget p1, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x6

    if-eqz p2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    :goto_0
    const/16 p2, 0xb

    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    invoke-virtual {v0, p2, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    invoke-virtual {v0, p2, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    :cond_1
    return-object v0
.end method

.method public final getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    const/4 p1, -0x1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%02d:%02d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
