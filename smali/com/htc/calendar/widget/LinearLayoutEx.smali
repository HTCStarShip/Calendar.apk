.class public Lcom/htc/calendar/widget/LinearLayoutEx;
.super Landroid/widget/LinearLayout;
.source "LinearLayoutEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearLayoutEx"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/LinearLayoutEx;->init(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/LinearLayoutEx;->init(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 25
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/LinearLayoutEx;->initLocked(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LinearLayoutEx"

    const-string v2, "inflate LinearLayoutEx error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initLocked(Landroid/content/Context;)V
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 33
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2090059

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 35
    .local v1, layout:Landroid/view/ViewGroup;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0, v1, v2}, Lcom/htc/calendar/widget/LinearLayoutEx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "no theme resource"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method
