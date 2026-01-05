.class public final Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final id:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->id:I

    return-void
.end method
