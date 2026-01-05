.class public final Lcom/android/server/compat/overrides/OverrideValue;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public enabled:Ljava/lang/Boolean;

.field public packageName:Ljava/lang/String;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/OverrideValue;
    .locals 3

    new-instance v0, Lcom/android/server/compat/overrides/OverrideValue;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "packageName"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, v0, Lcom/android/server/compat/overrides/OverrideValue;->packageName:Ljava/lang/String;

    :cond_0
    const-string/jumbo v2, "enabled"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/compat/overrides/OverrideValue;->enabled:Ljava/lang/Boolean;

    :cond_1
    invoke-static {p0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public final write(Lcom/android/server/compat/overrides/XmlWriter;)V
    .locals 2

    const-string v0, "<override-value"

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/compat/overrides/OverrideValue;->packageName:Ljava/lang/String;

    const-string v1, "\""

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " packageName=\""

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/compat/overrides/OverrideValue;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/compat/overrides/OverrideValue;->enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, " enabled=\""

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/compat/overrides/OverrideValue;->enabled:Ljava/lang/Boolean;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    :goto_2
    const-string p0, ">\n"

    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    const-string p0, "</override-value>\n"

    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
