.class public final enum Lcom/android/server/HermesBigdataFunction$BigdataError;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/HermesBigdataFunction$BigdataError;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_FILE_CREATED_FAILED:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_SEND_DIAGMON:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_ZIP_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;


# instance fields
.field private final errCode:I

.field private final reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string/jumbo v1, "No Error"

    const-string/jumbo v2, "NO_ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v2, "ERR_NOT_SUPPORTED"

    const/4 v3, 0x1

    const/16 v4, -0x64

    const-string v5, "Bigdata function is not supported"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    new-instance v2, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v3, "ERR_SEND_DIAGMON"

    const/4 v4, 0x2

    const/16 v5, -0x65

    const-string/jumbo v6, "sending diagmon agent is failed"

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_SEND_DIAGMON:Lcom/android/server/HermesBigdataFunction$BigdataError;

    new-instance v3, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v4, "ERR_UNKNOWN"

    const/4 v5, 0x3

    const/16 v6, -0x3e8

    const-string/jumbo v7, "Unkonwn error"

    invoke-direct {v3, v5, v6, v4, v7}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    new-instance v4, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v5, "ERR_FILE_NOT_FOUND"

    const/4 v6, 0x4

    const/16 v7, -0x3e9

    const-string v8, "File is not found"

    invoke-direct {v4, v6, v7, v5, v8}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    new-instance v5, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v6, "ERR_FILE_CREATED_FAILED"

    const/4 v7, 0x5

    const/16 v8, -0x3ea

    const-string v9, "File creation has failed"

    invoke-direct {v5, v7, v8, v6, v9}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_CREATED_FAILED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    new-instance v6, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v7, "ERR_PERMISSION_DENIED"

    const/4 v8, 0x6

    const/16 v9, -0x3eb

    const-string v10, "File permission denied"

    invoke-direct {v6, v8, v9, v7, v10}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    new-instance v7, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v8, "ERR_ZIP_EXCEPTION"

    const/4 v9, 0x7

    const/16 v10, -0x3ec

    const-string/jumbo v11, "Zip API is failed"

    invoke-direct {v7, v9, v10, v8, v11}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_ZIP_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    new-instance v8, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v9, "ERR_IO_EXCEPTION"

    const/16 v10, 0x8

    const/16 v11, -0x3ed

    const-string/jumbo v12, "Some I/O operation is failed"

    invoke-direct {v8, v10, v11, v9, v12}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    new-instance v9, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v10, "ERR_NULLPOINTER_EXCEPTION"

    const/16 v11, 0x9

    const/16 v12, -0x3ee

    const-string/jumbo v13, "Null pointer exception has occured"

    invoke-direct {v9, v11, v12, v10, v13}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    new-instance v10, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v11, "ERR_INTERRUPTION_EXCEPTION"

    const/16 v12, 0xa

    const/16 v13, -0x3ef

    const-string/jumbo v14, "Some interrupt has occured"

    invoke-direct {v10, v12, v13, v11, v14}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    filled-new-array/range {v0 .. v10}, [Lcom/android/server/HermesBigdataFunction$BigdataError;

    move-result-object v0

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->$VALUES:[Lcom/android/server/HermesBigdataFunction$BigdataError;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->reason:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->errCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/HermesBigdataFunction$BigdataError;
    .locals 1

    const-class v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    return-object p0
.end method

.method public static values()[Lcom/android/server/HermesBigdataFunction$BigdataError;
    .locals 1

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->$VALUES:[Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-virtual {v0}, [Lcom/android/server/HermesBigdataFunction$BigdataError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/HermesBigdataFunction$BigdataError;

    return-object v0
.end method


# virtual methods
.method public final errCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->errCode:I

    return p0
.end method

.method public final reason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->reason:Ljava/lang/String;

    return-object p0
.end method
