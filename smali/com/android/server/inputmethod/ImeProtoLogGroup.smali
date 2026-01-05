.class public final enum Lcom/android/server/inputmethod/ImeProtoLogGroup;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLogGroup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/inputmethod/ImeProtoLogGroup;",
        ">;",
        "Lcom/android/internal/protolog/common/IProtoLogGroup;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/inputmethod/ImeProtoLogGroup;

.field public static final enum IME_VISIBILITY_APPLIER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

.field public static final enum IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

.field public static final enum IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;


# instance fields
.field private final mEnabled:Z

.field private volatile mLogToLogcat:Z

.field private volatile mLogToProto:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;

    sget-boolean v1, Lcom/android/server/inputmethod/ImeProtoLogGroup$Consts;->ENABLE_LOGCAT:Z

    const-string v2, "IMMS_DEBUG"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/inputmethod/ImeProtoLogGroup;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    new-instance v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v3, "IME_VISIBILITY_APPLIER_DEBUG"

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3, v1}, Lcom/android/server/inputmethod/ImeProtoLogGroup;-><init>(ILjava/lang/String;Z)V

    sput-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VISIBILITY_APPLIER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    new-instance v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "IME_VIS_STATE_COMPUTER_DEBUG"

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4, v1}, Lcom/android/server/inputmethod/ImeProtoLogGroup;-><init>(ILjava/lang/String;Z)V

    sput-object v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    filled-new-array {v0, v2, v3}, [Lcom/android/server/inputmethod/ImeProtoLogGroup;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->$VALUES:[Lcom/android/server/inputmethod/ImeProtoLogGroup;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mEnabled:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mLogToProto:Z

    iput-boolean p3, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mLogToLogcat:Z

    const-string p1, "InputMethodManagerService"

    iput-object p1, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/inputmethod/ImeProtoLogGroup;
    .locals 1

    const-class v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;

    return-object p0
.end method

.method public static values()[Lcom/android/server/inputmethod/ImeProtoLogGroup;
    .locals 1

    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->$VALUES:[Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v0}, [Lcom/android/server/inputmethod/ImeProtoLogGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/inputmethod/ImeProtoLogGroup;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    sget v0, Lcom/android/server/inputmethod/ImeProtoLogGroup$Consts;->START_ID:I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mEnabled:Z

    return p0
.end method

.method public final isLogToLogcat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mLogToLogcat:Z

    return p0
.end method

.method public final isLogToProto()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mLogToProto:Z

    return p0
.end method

.method public final setLogToLogcat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mLogToLogcat:Z

    return-void
.end method

.method public final setLogToProto(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mLogToProto:Z

    return-void
.end method
