.class public final enum Lcom/android/server/am/KillPolicyManager$PsiFileType;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/KillPolicyManager$PsiFileType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$PsiFileType;

.field public static final enum CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

.field public static final enum IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

.field public static final enum MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    const-string v1, "/proc/pressure/io"

    const-string v2, "IO"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/am/KillPolicyManager$PsiFileType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    new-instance v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    const-string v2, "/proc/pressure/memory"

    const-string/jumbo v3, "MEMORY"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/am/KillPolicyManager$PsiFileType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;->MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    new-instance v2, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    const-string v3, "/proc/pressure/cpu"

    const-string v4, "CPU"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v4, v3}, Lcom/android/server/am/KillPolicyManager$PsiFileType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/KillPolicyManager$PsiFileType;->CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/am/KillPolicyManager$PsiFileType;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$PsiFileType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->mPath:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$PsiFileType;
    .locals 1

    const-class v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$PsiFileType;
    .locals 1

    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$PsiFileType;

    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$PsiFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/KillPolicyManager$PsiFileType;

    return-object v0
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->mPath:Ljava/lang/String;

    return-object p0
.end method
