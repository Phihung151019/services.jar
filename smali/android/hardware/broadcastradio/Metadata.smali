.class public final Landroid/hardware/broadcastradio/Metadata;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/broadcastradio/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _tag:I

.field public _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/broadcastradio/Metadata$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/broadcastradio/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public static _tagString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown field: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo p0, "hdSubChannelsAvailable"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "hdStationNameLong"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "hdStationNameShort"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "ufids"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "commercial"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "commentActualText"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "commentShortDescription"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "genre"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "dabComponentNameShort"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "dabComponentName"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "dabServiceNameShort"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "dabServiceName"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "dabEnsembleNameShort"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "dabEnsembleName"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "programName"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "albumArt"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "stationIcon"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "songAlbum"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "songArtist"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "songTitle"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "rdsRt"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "rbdsPty"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "rdsPty"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "rdsPs"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bad access: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/hardware/broadcastradio/Metadata;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-static {p0}, Landroid/hardware/broadcastradio/Metadata;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

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
    instance-of v2, p1, Landroid/hardware/broadcastradio/Metadata;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/Metadata;

    iget v2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    iget v3, p1, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    iget-object p1, p1, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "Metadata.hdSubChannelsAvailable("

    const/16 v2, 0x17

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string/jumbo v0, "Metadata.hdStationNameLong("

    const/16 v2, 0x16

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const-string/jumbo v0, "Metadata.hdStationNameShort("

    const/16 v2, 0x15

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-string/jumbo v0, "Metadata.ufids("

    const/16 v2, 0x14

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const-string/jumbo v0, "Metadata.commercial("

    const/16 v2, 0x13

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const-string/jumbo v0, "Metadata.commentActualText("

    const/16 v2, 0x12

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const-string/jumbo v0, "Metadata.commentShortDescription("

    const/16 v2, 0x11

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const-string/jumbo v0, "Metadata.genre("

    const/16 v2, 0x10

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string/jumbo v0, "Metadata.dabComponentNameShort("

    const/16 v2, 0xf

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const-string/jumbo v0, "Metadata.dabComponentName("

    const/16 v2, 0xe

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    const-string/jumbo v0, "Metadata.dabServiceNameShort("

    const/16 v2, 0xd

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    const-string/jumbo v0, "Metadata.dabServiceName("

    const/16 v2, 0xc

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    const-string/jumbo v0, "Metadata.dabEnsembleNameShort("

    const/16 v2, 0xb

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    const-string/jumbo v0, "Metadata.dabEnsembleName("

    const/16 v2, 0xa

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_e
    const-string/jumbo v0, "Metadata.programName("

    const/16 v2, 0x9

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    const-string/jumbo v0, "Metadata.albumArt("

    const/16 v2, 0x8

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    const-string/jumbo v0, "Metadata.stationIcon("

    const/4 v2, 0x7

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    const-string/jumbo v0, "Metadata.songAlbum("

    const/4 v2, 0x6

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    const-string/jumbo v0, "Metadata.songArtist("

    const/4 v2, 0x5

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_13
    const-string/jumbo v0, "Metadata.songTitle("

    const/4 v2, 0x4

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14
    const-string/jumbo v0, "Metadata.rdsRt("

    const/4 v2, 0x3

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string/jumbo v0, "Metadata.rbdsPty("

    const/4 v2, 0x2

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16
    const-string/jumbo v0, "Metadata.rdsPty("

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17
    const-string/jumbo v0, "Metadata.rdsPs("

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p2, 0x17

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_1
    const/16 p2, 0x16

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const/16 p2, 0x15

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const/16 p2, 0x14

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void

    :pswitch_4
    const/16 p2, 0x13

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const/16 p2, 0x12

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_6
    const/16 p2, 0x11

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_7
    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_8
    const/16 p2, 0xf

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_9
    const/16 p2, 0xe

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_a
    const/16 p2, 0xd

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_b
    const/16 p2, 0xc

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_c
    const/16 p2, 0xb

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_d
    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_e
    const/16 p2, 0x9

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_f
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_10
    const/4 p2, 0x7

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_11
    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_12
    const/4 p2, 0x5

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_13
    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_14
    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_15
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_16
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_17
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
