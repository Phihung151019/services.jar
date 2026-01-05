.class public final synthetic Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/att/iqi/libs/PreferenceStore;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;->f$0:Lcom/att/iqi/libs/PreferenceStore;

    iput-object p2, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;->f$0:Lcom/att/iqi/libs/PreferenceStore;

    iget-object v1, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/att/iqi/libs/PreferenceStore;->$r8$lambda$NJFCB3HkcFTxbb3a7-OfJhD3HGU(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;I)V

    return-void
.end method
