.class Lcom/htc/calendar/CalendarSearchActivity$1;
.super Ljava/lang/Object;
.source "CalendarSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/calendar/CalendarSearchActivity$1;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 197
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity$1;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    const-string v3, ""

    #setter for: Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/CalendarSearchActivity;->access$102(Lcom/htc/calendar/CalendarSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity$1;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    const/4 v3, 0x1

    #setter for: Lcom/htc/calendar/CalendarSearchActivity;->mCleanText:Z
    invoke-static {v2, v3}, Lcom/htc/calendar/CalendarSearchActivity;->access$402(Lcom/htc/calendar/CalendarSearchActivity;Z)Z

    .line 201
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity$1;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    iget-object v3, p0, Lcom/htc/calendar/CalendarSearchActivity$1;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    #getter for: Lcom/htc/calendar/CalendarSearchActivity;->mSearchBox:Lcom/htc/widget/HeaderBarInput;
    invoke-static {v3}, Lcom/htc/calendar/CalendarSearchActivity;->access$500(Lcom/htc/calendar/CalendarSearchActivity;)Lcom/htc/widget/HeaderBarInput;

    move-result-object v3

    #calls: Lcom/htc/calendar/CalendarSearchActivity;->getEditText(Lcom/htc/widget/HeaderBarInput;)Landroid/widget/EditText;
    invoke-static {v2, v3}, Lcom/htc/calendar/CalendarSearchActivity;->access$600(Lcom/htc/calendar/CalendarSearchActivity;Lcom/htc/widget/HeaderBarInput;)Landroid/widget/EditText;

    move-result-object v0

    .line 202
    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 203
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity$1;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/CalendarSearchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 205
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 211
    .end local v0           #et:Landroid/widget/EditText;
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity$1;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    #getter for: Lcom/htc/calendar/CalendarSearchActivity;->mCleanText:Z
    invoke-static {v2}, Lcom/htc/calendar/CalendarSearchActivity;->access$400(Lcom/htc/calendar/CalendarSearchActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity$1;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    #getter for: Lcom/htc/calendar/CalendarSearchActivity;->mListView:Lcom/htc/calendar/EventListView;
    invoke-static {v2}, Lcom/htc/calendar/CalendarSearchActivity;->access$000(Lcom/htc/calendar/CalendarSearchActivity;)Lcom/htc/calendar/EventListView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 212
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity$1;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    const-string v3, ""

    #setter for: Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/CalendarSearchActivity;->access$102(Lcom/htc/calendar/CalendarSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    :goto_1
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity$1;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    #calls: Lcom/htc/calendar/CalendarSearchActivity;->doingQuery()V
    invoke-static {v2}, Lcom/htc/calendar/CalendarSearchActivity;->access$700(Lcom/htc/calendar/CalendarSearchActivity;)V

    .line 217
    return-void

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity$1;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    #setter for: Lcom/htc/calendar/CalendarSearchActivity;->mCleanText:Z
    invoke-static {v2, v4}, Lcom/htc/calendar/CalendarSearchActivity;->access$402(Lcom/htc/calendar/CalendarSearchActivity;Z)Z

    goto :goto_0

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity$1;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/CalendarSearchActivity;->access$102(Lcom/htc/calendar/CalendarSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 220
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 223
    return-void
.end method
