package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface pjCommand {
	public void execute(Model model, HttpServletRequest request);
}
