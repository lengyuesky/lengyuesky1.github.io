import gradio as gr
import subprocess

def run_shell_command(command):
    try:
        result = subprocess.run(command, shell=True, capture_output=True, text=True)
        return result.stdout + result.stderr
    except Exception as e:
        return str(e)

with gr.Blocks() as demo:
    gr.Markdown("## GUI 界面")
    command_input = gr.Textbox(label="输入", placeholder="在此输入 ")
    output = gr.Textbox(label="输出")
    run_button = gr.Button("提交")

    run_button.click(fn=run_shell_command, inputs=command_input, outputs=output)

demo.launch()
