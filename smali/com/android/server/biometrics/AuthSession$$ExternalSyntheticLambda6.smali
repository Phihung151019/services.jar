.class public final synthetic Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/AuthSession;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/AuthSession;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/AuthSession;

    iput p2, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/AuthSession;

    iget p0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-eq p1, p0, :cond_0

    iget-object p0, v0, Lcom/android/server/biometrics/AuthSession;->mSfpsSensorIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/AuthSession;

    iget p0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p0, v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result p0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Unknown sensor: "

    const-string v1, "BiometricService/AuthSession"

    invoke-static {p0, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xfff

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
