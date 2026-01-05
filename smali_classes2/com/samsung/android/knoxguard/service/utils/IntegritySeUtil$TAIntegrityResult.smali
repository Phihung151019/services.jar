.class public Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public errorCode:I

.field public isOk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->isOk:Z

    iput v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->errorCode:I

    return-void
.end method
