.class Lcom/htc/calendar/EditEvent$18;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/webkit/EditableWebView$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 5450
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$18;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "wv"
    .parameter "reason"

    .prologue
    .line 5453
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$18;->this$0:Lcom/htc/calendar/EditEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/calendar/EditEvent;->mEditableWebviewContentChanged:Z
    invoke-static {v0, v1}, Lcom/htc/calendar/EditEvent;->access$8402(Lcom/htc/calendar/EditEvent;Z)Z

    .line 5454
    return-void
.end method
