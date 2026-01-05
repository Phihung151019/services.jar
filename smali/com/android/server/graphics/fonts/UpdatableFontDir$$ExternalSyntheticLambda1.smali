.class public final synthetic Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/Map;

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfig(Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method
