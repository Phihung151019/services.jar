.class Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
.super Landroid/util/AndroidException;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->mErrorCode:I

    return p0
.end method
