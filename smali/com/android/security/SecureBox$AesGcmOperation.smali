.class final enum Lcom/android/security/SecureBox$AesGcmOperation;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/security/SecureBox$AesGcmOperation;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/security/SecureBox$AesGcmOperation;

.field public static final enum DECRYPT:Lcom/android/security/SecureBox$AesGcmOperation;

.field public static final enum ENCRYPT:Lcom/android/security/SecureBox$AesGcmOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/security/SecureBox$AesGcmOperation;

    const-string v1, "ENCRYPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/security/SecureBox$AesGcmOperation;->ENCRYPT:Lcom/android/security/SecureBox$AesGcmOperation;

    new-instance v1, Lcom/android/security/SecureBox$AesGcmOperation;

    const-string v2, "DECRYPT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/security/SecureBox$AesGcmOperation;->DECRYPT:Lcom/android/security/SecureBox$AesGcmOperation;

    filled-new-array {v0, v1}, [Lcom/android/security/SecureBox$AesGcmOperation;

    move-result-object v0

    sput-object v0, Lcom/android/security/SecureBox$AesGcmOperation;->$VALUES:[Lcom/android/security/SecureBox$AesGcmOperation;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/security/SecureBox$AesGcmOperation;
    .locals 1

    const-class v0, Lcom/android/security/SecureBox$AesGcmOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/security/SecureBox$AesGcmOperation;

    return-object p0
.end method

.method public static values()[Lcom/android/security/SecureBox$AesGcmOperation;
    .locals 1

    sget-object v0, Lcom/android/security/SecureBox$AesGcmOperation;->$VALUES:[Lcom/android/security/SecureBox$AesGcmOperation;

    invoke-virtual {v0}, [Lcom/android/security/SecureBox$AesGcmOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/security/SecureBox$AesGcmOperation;

    return-object v0
.end method
