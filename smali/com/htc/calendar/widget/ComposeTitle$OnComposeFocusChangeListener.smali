.class public Lcom/htc/calendar/widget/ComposeTitle$OnComposeFocusChangeListener;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnComposeFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 2496
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$OnComposeFocusChangeListener;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 2498
    return-void
.end method
