.class public Lcom/android/server/hdmi/HdmiCecAtomWriter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field protected static final FEATURE_ABORT_OPCODE_UNKNOWN:I = 0x100

.field protected static final PHYSICAL_ADDRESS_INVALID:I = 0xffff


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static earcStatusChanged(IIIZZ)V
    .locals 11

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v0

    goto :goto_0

    :cond_1
    move v8, v2

    goto :goto_0

    :cond_2
    move v8, v3

    goto :goto_0

    :cond_3
    move v8, v4

    :goto_0
    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    move v9, v1

    goto :goto_1

    :cond_4
    move v9, v0

    goto :goto_1

    :cond_5
    move v9, v2

    goto :goto_1

    :cond_6
    move v9, v3

    goto :goto_1

    :cond_7
    move v9, v4

    :goto_1
    const/16 v5, 0x2bd

    move v10, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZIII)V

    return-void
.end method


# virtual methods
.method public final messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V
    .locals 15

    move-object/from16 v0, p1

    move/from16 v1, p4

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v10, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0xa

    move v10, v1

    :goto_0
    iget v7, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    iget v9, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    if-eqz v9, :cond_5

    const/16 v2, 0x44

    if-eq v9, v2, :cond_2

    const/16 v1, 0x84

    if-eq v9, v1, :cond_1

    new-instance v1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    invoke-direct {v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>()V

    goto :goto_2

    :cond_1
    new-instance v1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    invoke-direct {v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>()V

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    invoke-direct {v2}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>()V

    array-length v4, v1

    if-lez v4, :cond_3

    aget-byte v1, v1, v3

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_4

    const/16 v3, 0x29

    if-gt v1, v3, :cond_4

    const/4 v1, 0x2

    iput v1, v2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    :cond_3
    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_4
    add-int/lit16 v1, v1, 0x100

    iput v1, v2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    invoke-direct {v2}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>()V

    array-length v4, v1

    if-lez v4, :cond_3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    aget-byte v1, v1, v4

    add-int/lit8 v1, v1, 0xa

    iput v1, v2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    goto :goto_1

    :goto_2
    iget v11, v1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    iget v12, v1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    iget v13, v1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    iget v14, v1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mPhysicalAddress:I

    iget v8, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    move-object v4, p0

    move/from16 v6, p2

    move/from16 v5, p3

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->writeHdmiCecMessageReportedAtom(IIIIIIIIII)V

    return-void
.end method

.method public writeHdmiCecMessageReportedAtom(IIIIIIIIII)V
    .locals 0

    const/16 p0, 0x136

    invoke-static/range {p0 .. p10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIIII)V

    return-void
.end method
