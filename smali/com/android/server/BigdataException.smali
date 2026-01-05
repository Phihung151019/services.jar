.class Lcom/android/server/BigdataException;
.super Ljava/lang/Exception;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field private final err:Lcom/android/server/HermesBigdataFunction$BigdataError;


# direct methods
.method public constructor <init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/HermesBigdataFunction$BigdataError;->reason()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/BigdataException;->err:Lcom/android/server/HermesBigdataFunction$BigdataError;

    return-void
.end method


# virtual methods
.method public final getErrCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/BigdataException;->err:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-virtual {p0}, Lcom/android/server/HermesBigdataFunction$BigdataError;->errCode()I

    move-result p0

    return p0
.end method
