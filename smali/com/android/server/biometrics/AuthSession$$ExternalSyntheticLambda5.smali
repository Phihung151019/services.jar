.class public final synthetic Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;->$r8$classId:I

    iput p1, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;->$r8$classId:I

    iget p0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;->f$0:I

    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    packed-switch v0, :pswitch_data_0

    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
