.class public final Landroid/hardware/biometrics/face/V1_0/OptionalBool;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public status:I

.field public value:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    iput-boolean v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    iget v2, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    iget v3, p1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean p0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    iget-boolean p1, p1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean p0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{.status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    invoke-static {v1}, Landroid/hardware/biometrics/face/V1_0/Status;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    const-string/jumbo v1, "}"

    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
