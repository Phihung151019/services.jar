.class public final Lcom/android/server/display/brightness/BrightnessReason;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final changes:Ljava/util/List;

.field public mModifier:I

.field public mReason:I

.field public mTag:Ljava/lang/CharSequence;

.field public startBrightness:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    if-ltz p1, :cond_1

    const/16 v0, 0xe

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    return-void

    :cond_1
    :goto_0
    const-string/jumbo p0, "brightness reason out of bounds: "

    const-string v0, "BrightnessReason"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "last_target"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "doze_manual"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "offload"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "follower"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "screen_off_brightness_sensor"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "boost"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "temporary"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "override"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "screen_off"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "automatic"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "doze_default"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "doze"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "manual"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final addModifier(FI)V
    .locals 2

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    or-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;-><init>(Lcom/android/server/display/brightness/BrightnessReason;IF)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addModifier(ILjava/util/List;)V
    .locals 1

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final changesToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessReason;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "[%d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/brightness/BrightnessReason$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/display/brightness/BrightnessReason$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/server/display/brightness/BrightnessReason;

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    iget v2, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    if-ne v0, v2, :cond_2

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    iget v2, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    if-ne v0, v2, :cond_2

    iget-object p1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final getReason()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    return p0
.end method

.method public final hasModifier(I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isStartBrightnessChanged(Lcom/android/server/display/brightness/BrightnessReason;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    iget p1, p1, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final set(Lcom/android/server/display/brightness/BrightnessReason;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    :goto_0
    if-nez p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    iget v2, p1, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(II)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    iget-object p1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    :goto_3
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setModifier(I)V
    .locals 1

    const v0, -0x3fffc0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "brightness modifier out of bounds: 0x"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrightnessReason"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    return-void
.end method

.method public final setReason(FI)V
    .locals 0

    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(II)V

    return-void
.end method

.method public final setReason(II)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xe

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    iput p2, p0, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    :goto_0
    const-string/jumbo p0, "brightness reason out of bounds: "

    const-string p2, "BrightnessReason"

    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessReason;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    const-string v1, " temp_adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const-string p1, " auto_adj"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const-string p1, " low_pwr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    const-string p1, " dim"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    const-string p1, " hdr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    const-string p1, " throttled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_7

    const-string p1, " lux_lower_bound"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_8

    const-string p0, " stylus_under_use"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p1, p0, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v1, 0x5b

    if-ne p1, v1, :cond_9

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_9
    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
