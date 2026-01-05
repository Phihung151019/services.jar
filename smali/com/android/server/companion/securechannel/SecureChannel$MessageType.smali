.class final enum Lcom/android/server/companion/securechannel/SecureChannel$MessageType;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/companion/securechannel/SecureChannel$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum ATTESTATION:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum AVF_RESULT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum PRE_SHARED_KEY:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

.field public static final enum UNKNOWN:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;


# instance fields
.field private final mValue:S


# direct methods
.method public static bridge synthetic -$$Nest$fgetmValue(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)S
    .locals 0

    iget-short p0, p0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->mValue:S

    return p0
.end method

.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    const/16 v1, 0x4849

    const-string v2, "HANDSHAKE_INIT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    new-instance v1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    const/4 v2, 0x1

    const/16 v4, 0x4846

    const-string v5, "HANDSHAKE_FINISH"

    invoke-direct {v1, v5, v2, v4}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    new-instance v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    const/4 v4, 0x2

    const/16 v5, 0x504b

    const-string/jumbo v6, "PRE_SHARED_KEY"

    invoke-direct {v2, v6, v4, v5}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->PRE_SHARED_KEY:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    move v4, v3

    new-instance v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    const/4 v5, 0x3

    const/16 v6, 0x4154

    const-string v7, "ATTESTATION"

    invoke-direct {v3, v7, v5, v6}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->ATTESTATION:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    move v5, v4

    new-instance v4, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    const/4 v6, 0x4

    const/16 v7, 0x5652

    const-string v8, "AVF_RESULT"

    invoke-direct {v4, v8, v6, v7}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->AVF_RESULT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    move v6, v5

    new-instance v5, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    const/4 v7, 0x5

    const/16 v8, 0x534d

    const-string/jumbo v9, "SECURE_MESSAGE"

    invoke-direct {v5, v9, v7, v8}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    move v7, v6

    new-instance v6, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    const-string/jumbo v8, "UNKNOWN"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->UNKNOWN:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    filled-new-array/range {v0 .. v6}, [Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->$VALUES:[Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-short p1, p3

    iput-short p1, p0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->mValue:S

    return-void
.end method

.method public static from(S)Lcom/android/server/companion/securechannel/SecureChannel$MessageType;
    .locals 5

    invoke-static {}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->values()[Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-short v4, v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->mValue:S

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->UNKNOWN:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/companion/securechannel/SecureChannel$MessageType;
    .locals 1

    const-class v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/companion/securechannel/SecureChannel$MessageType;
    .locals 1

    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->$VALUES:[Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {v0}, [Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    return-object v0
.end method
