.class public final Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final key:Ljava/lang/String;

.field public final type:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->type:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->key:Ljava/lang/String;

    return-void
.end method
