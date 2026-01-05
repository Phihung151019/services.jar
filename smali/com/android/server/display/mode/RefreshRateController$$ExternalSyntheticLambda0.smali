.class public final synthetic Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x3c

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    instance-of p0, p1, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;

    return p0

    :pswitch_1
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    instance-of p0, p1, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken;

    return p0

    :pswitch_2
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    instance-of p0, p1, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;

    return p0

    :pswitch_3
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    instance-of p0, p1, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;

    return p0

    :pswitch_4
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    instance-of p0, p1, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;

    return p0

    :pswitch_5
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    instance-of p0, p1, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken;

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
