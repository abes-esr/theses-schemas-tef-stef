<?xml version="1.0" encoding="UTF-8"?>
<structure version="2" schemafile="docbookx.dtd" workingxmlfile="DocBook.xml" templatexmlfile="">
	<xmltablesupport standard="CALS"/>
	<template>
		<match overwrittenxslmatch="/"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="abbrev"/>
		<children>
			<text fixtext="["/>
			<xpath allchildren="1"/>
			<text fixtext="]"/>
		</children>
	</template>
	<template>
		<styles font-family="@Arial Unicode MS" font-style="italic"/>
		<match match="abstract"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1">
						<styles font-family="@Arial Unicode MS" font-style="italic"/>
					</xpath>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-style="italic" text-decoration="underline"/>
		<match match="accel"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic" text-decoration="underline"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="ackno"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles text-transform="uppercase"/>
		<match match="acronym"/>
		<children>
			<xpath allchildren="1">
				<styles text-transform="uppercase"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="address"/>
		<children>
			<template>
				<match match="affiliation"/>
				<children>
					<template>
						<match match="shortaffil"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<newline/>
					<template>
						<match match="orgdiv"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<newline/>
					<template>
						<match match="orgname"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
				</children>
			</template>
			<table>
				<properties border="0"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties colspan="2"/>
										<children>
											<template>
												<match match="street"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="pob"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="city"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="state"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="postcode"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties colspan="3"/>
										<children>
											<template>
												<match match="country"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties colspan="3"/>
										<children>
											<template>
												<match match="affiliation"/>
												<children>
													<template>
														<match match="address"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<table>
				<properties border="0"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<text fixtext="Phone"/>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="phone"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<text fixtext="Fax"/>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="fax"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<text fixtext="E-mail"/>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="email"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="affiliation"/>
		<children>
			<table>
				<properties border="0"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties height="121" valign="top" width="205"/>
										<children>
											<table>
												<properties border="0"/>
												<children>
													<tablebody>
														<children>
															<tablerow>
																<children>
																	<tablecol>
																		<children>
																			<template>
																				<match match="jobtitle"/>
																				<children>
																					<xpath allchildren="1"/>
																				</children>
																			</template>
																		</children>
																	</tablecol>
																</children>
															</tablerow>
														</children>
													</tablebody>
												</children>
											</table>
											<table>
												<properties border="0" width="100%"/>
												<children>
													<tablebody>
														<children>
															<tablerow>
																<children>
																	<tablecol>
																		<children>
																			<template>
																				<match match="orgdiv"/>
																				<children>
																					<xpath allchildren="1"/>
																				</children>
																			</template>
																		</children>
																	</tablecol>
																</children>
															</tablerow>
														</children>
													</tablebody>
												</children>
											</table>
											<table>
												<properties border="0" width="100%"/>
												<children>
													<tablebody>
														<children>
															<tablerow>
																<children>
																	<tablecol>
																		<children>
																			<template>
																				<match match="orgname"/>
																				<children>
																					<xpath allchildren="1"/>
																				</children>
																			</template>
																		</children>
																	</tablecol>
																</children>
															</tablerow>
														</children>
													</tablebody>
												</children>
											</table>
											<table>
												<properties border="0" width="100%"/>
												<children>
													<tablebody>
														<children>
															<tablerow>
																<children>
																	<tablecol>
																		<children>
																			<template>
																				<match match="shortaffil"/>
																				<children>
																					<xpath allchildren="1"/>
																				</children>
																			</template>
																		</children>
																	</tablecol>
																</children>
															</tablerow>
														</children>
													</tablebody>
												</children>
											</table>
											<table>
												<properties border="0" width="100%"/>
												<children>
													<tablebody>
														<children>
															<tablerow>
																<children>
																	<tablecol>
																		<children>
																			<template>
																				<match match="address"/>
																				<children>
																					<xpath allchildren="1"/>
																				</children>
																			</template>
																		</children>
																	</tablecol>
																</children>
															</tablerow>
														</children>
													</tablebody>
												</children>
											</table>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
		</children>
	</template>
	<template>
		<match match="anchor"/>
	</template>
	<template>
		<match match="answer"/>
		<children>
			<template>
				<match match="label"/>
				<children>
					<xpath allchildren="1"/>
					<text fixtext=": "/>
				</children>
			</template>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<editorproperties adding="all" autoaddname="1" editable="1" markupmode="hide"/>
		<match match="appendix"/>
		<children>
			<newline/>
			<template>
				<match match="appendixinfo"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
			<newline/>
		</children>
	</template>
	<template>
		<match match="appendixinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<editorproperties adding="mandatory" editable="1" markupmode="large"/>
		<match match="article"/>
		<children>
			<newline/>
			<template>
				<match match="articleinfo"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
			<newline/>
		</children>
	</template>
	<template>
		<match match="articleinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="attribution"/>
		<children>
			<text fixtext=" -- "/>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="audiodata"/>
		<children>
			<template>
				<styles font-style="italic"/>
				<match match="@fileref"/>
				<children>
					<text fixtext="(">
						<styles font-style="italic"/>
					</text>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
					<text fixtext=")">
						<styles font-style="italic"/>
					</text>
				</children>
			</template>
		</children>
	</template>
	<template>
		<match match="audioobject"/>
		<children>
			<newline/>
			<template>
				<match match="objectinfo"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="audiodata"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
		</children>
	</template>
	<template>
		<match match="author"/>
		<children>
			<newline/>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties height="58" valign="top" width="792"/>
										<children>
											<template>
												<match match="personname"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<newline/>
											<template>
												<match match="honorific"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<template>
												<match match="firstname"/>
												<children>
													<text fixtext=" "/>
													<xpath allchildren="1"/>
												</children>
											</template>
											<template>
												<match match="surname"/>
												<children>
													<text fixtext=" "/>
													<xpath allchildren="1"/>
												</children>
											</template>
											<template>
												<match match="lineage"/>
												<children>
													<text fixtext=" "/>
													<xpath allchildren="1"/>
												</children>
											</template>
											<newline/>
											<template>
												<match match="othername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<newline/>
										</children>
									</tablecol>
									<tablecol>
										<properties height="58"/>
										<children>
											<template>
												<match match="affiliation"/>
												<children>
													<template>
														<match match="shortaffil"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<table>
														<properties border="0" width="100%"/>
														<children>
															<tablebody>
																<children>
																	<tablerow>
																		<children>
																			<tablecol>
																				<children>
																					<template>
																						<match match="jobtitle"/>
																						<children>
																							<xpath allchildren="1"/>
																						</children>
																					</template>
																				</children>
																			</tablecol>
																		</children>
																	</tablerow>
																	<tablerow>
																		<children>
																			<tablecol>
																				<children>
																					<template>
																						<match match="orgdiv"/>
																						<children>
																							<xpath allchildren="1"/>
																						</children>
																					</template>
																				</children>
																			</tablecol>
																		</children>
																	</tablerow>
																	<tablerow>
																		<children>
																			<tablecol>
																				<children>
																					<template>
																						<match match="orgname"/>
																						<children>
																							<xpath allchildren="1"/>
																						</children>
																					</template>
																				</children>
																			</tablecol>
																		</children>
																	</tablerow>
																</children>
															</tablebody>
														</children>
													</table>
													<template>
														<match match="address"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties align="left" colspan="2" height="24" width="792"/>
										<children>
											<template>
												<match match="email"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties align="center" colspan="2" height="24" width="792"/>
										<children>
											<template>
												<match match="authorblurb"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<match match="contrib"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<template>
				<match match="personblurb"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="address"/>
				<children>
					<template>
						<match match="street"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<template>
						<match match="pob"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
				</children>
			</template>
		</children>
	</template>
	<template>
		<styles text-indent="3mm"/>
		<match match="authorblurb"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1">
						<styles text-indent="3mm"/>
					</xpath>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="authorgroup"/>
		<children>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="143"/>
										<children>
											<text fixtext="Author"/>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="author"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="143"/>
										<children>
											<text fixtext="Editor"/>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="editor"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties height="1" width="143"/>
										<children>
											<text fixtext="Collaborator"/>
										</children>
									</tablecol>
									<tablecol>
										<properties height="1"/>
										<children>
											<template>
												<match match="collab"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties height="24" width="143"/>
										<children>
											<text fixtext="Corperate Author"/>
										</children>
									</tablecol>
									<tablecol>
										<properties height="24"/>
										<children>
											<template>
												<match match="corpauthor"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties height="35" width="143"/>
										<children>
											<text fixtext="Other Credit"/>
										</children>
									</tablecol>
									<tablecol>
										<properties height="35"/>
										<children>
											<template>
												<match match="othercredit"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
		</children>
	</template>
	<template>
		<match match="beginpage"/>
		<children>
			<template>
				<styles font-style="italic"/>
				<match match="@pagenum"/>
				<children>
					<text fixtext="(">
						<styles font-style="italic"/>
					</text>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
					<text fixtext=")">
						<styles font-style="italic"/>
					</text>
				</children>
			</template>
		</children>
	</template>
	<template>
		<match match="bibliodiv"/>
		<children>
			<template>
				<styles font-size="medium" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="medium" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="biblioentry"/>
		<children>
			<template>
				<match match="abbrev"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<template>
				<match match="title"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<template>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<template>
				<match match="pubdate"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="bibliography"/>
		<children>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="bibliographyinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="blockinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="blockquote"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties height="148" width="103"/>
									</tablecol>
									<tablecol>
										<properties height="148" width="439"/>
										<children>
											<xpath restofcontents="1"/>
										</children>
									</tablecol>
									<tablecol>
										<properties height="148" width="190"/>
									</tablecol>
									<tablecol>
										<properties height="148"/>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties height="34" width="103"/>
									</tablecol>
									<tablecol>
										<properties height="34" width="439"/>
									</tablecol>
									<tablecol>
										<properties height="34" width="190"/>
										<children>
											<template>
												<match match="attribution"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<properties height="34"/>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
		</children>
	</template>
	<template>
		<editorproperties adding="mandatory" editable="1" markupmode="large"/>
		<match match="book"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="bookinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="bridgehead"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-size="small" vertical-Align="super"/>
		<match match="caption"/>
		<children>
			<xpath allchildren="1">
				<styles font-size="small" vertical-Align="super"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-family="@Arial Unicode MS" font-weight="bold" margin-left="1.5cm" margin-right="1.5cm"/>
		<match match="caution"/>
		<children>
			<newline/>
			<text fixtext="CAUTION: ">
				<styles font-family="@Arial Unicode MS" font-weight="bold" margin-left=".5cm"/>
			</text>
			<template>
				<styles font-family="@Arial Unicode MS" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-family="@Arial Unicode MS" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<paragraph>
				<children>
					<xpath restofcontents="1">
						<styles font-family="@Arial Unicode MS" font-weight="bold" margin-left="1.5cm" margin-right="1.5cm"/>
					</xpath>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="chapter"/>
		<children>
			<newline/>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="chapterinfo"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
			<newline/>
		</children>
	</template>
	<template>
		<match match="chapterinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="citation"/>
		<children>
			<text fixtext="["/>
			<xpath allchildren="1"/>
			<text fixtext="]"/>
		</children>
	</template>
	<template>
		<styles font-style="oblique"/>
		<match match="citetitle"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="oblique"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-family="Courier New"/>
		<match match="classname"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-family="Courier New"/>
		<match match="classsynopsis"/>
		<children>
			<newline/>
			<template>
				<match match="ooclass"/>
				<children>
					<xpath>
						<styles margin-left="1cm"/>
						<match match="modifier"/>
					</xpath>
					<template>
						<match match="classname"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
				</children>
			</template>
			<text fixtext=" "/>
			<template>
				<match match="oointerface"/>
				<children>
					<text fixtext="implements "/>
					<xpath>
						<match match="modifier"/>
					</xpath>
					<template>
						<match match="interfacename"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
				</children>
			</template>
			<newline/>
			<template>
				<match match="ooexception"/>
				<children>
					<text fixtext="throws ">
						<styles margin-left="2.5cm"/>
					</text>
					<xpath>
						<match match="modifier"/>
					</xpath>
					<template>
						<match match="exceptionname"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
				</children>
			</template>
			<text fixtext="{"/>
			<newline/>
			<xpath>
				<styles margin-left="2cm"/>
				<match match="fieldsynopsis"/>
			</xpath>
			<newline/>
			<xpath>
				<styles margin-left="2cm"/>
				<match match="constructorsynopsis"/>
			</xpath>
			<newline/>
			<template>
				<match match="destructorsynopsis"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath>
				<styles margin-left="2cm"/>
				<match match="methodsynopsis"/>
			</xpath>
			<newline/>
			<xpath>
				<match match="classsynopsisinfo"/>
			</xpath>
			<text fixtext="}"/>
			<newline/>
		</children>
	</template>
	<template>
		<styles white-space="pre"/>
		<match match="classsynopsisinfo"/>
		<children>
			<xpath allchildren="1">
				<styles white-space="pre"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="cmdsynopsis"/>
		<children>
			<paragraph paragraphtag="div">
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="colophon"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-weight="bold"/>
		<match match="command"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-family="Courier New"/>
		<match match="computeroutput"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-weight="bold"/>
		<match match="conftitle"/>
		<children>
			<text fixtext="&quot;"/>
			<xpath allchildren="1">
				<styles font-weight="bold"/>
			</xpath>
			<text fixtext="&quot;"/>
		</children>
	</template>
	<template>
		<styles font-family="Courier New"/>
		<match match="constant"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="constructorsynopsis"/>
		<children>
			<xpath>
				<match match="modifier"/>
			</xpath>
			<xpath>
				<match match="methodname"/>
			</xpath>
			<text fixtext="("/>
			<xpath>
				<match match="methodparam"/>
			</xpath>
			<text fixtext=")"/>
			<xpath>
				<match match="void"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="copyright"/>
		<children>
			<text fixtext="Copyright; "/>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="dedication"/>
		<children>
			<paragraph>
				<children>
					<template>
						<styles font-size="large" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="large" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="editor"/>
		<children>
			<text fixtext="G"/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties height="79" width="831"/>
										<children>
											<template>
												<match match="personname"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<newline/>
											<template>
												<match match="honorific"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<template>
												<match match="firstname"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<template>
												<match match="surname"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<template>
												<match match="lineage"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<newline/>
											<template>
												<match match="othername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<properties height="79"/>
										<children>
											<template>
												<match match="affiliation"/>
												<children>
													<template>
														<match match="shortaffil"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<table>
														<properties border="0" width="100%"/>
														<children>
															<tablebody>
																<children>
																	<tablerow>
																		<children>
																			<tablecol>
																				<children>
																					<template>
																						<match match="jobtitle"/>
																						<children>
																							<xpath allchildren="1"/>
																						</children>
																					</template>
																				</children>
																			</tablecol>
																		</children>
																	</tablerow>
																	<tablerow>
																		<children>
																			<tablecol>
																				<children>
																					<template>
																						<match match="orgdiv"/>
																						<children>
																							<xpath allchildren="1"/>
																						</children>
																					</template>
																				</children>
																			</tablecol>
																		</children>
																	</tablerow>
																	<tablerow>
																		<children>
																			<tablecol>
																				<children>
																					<template>
																						<match match="orgname"/>
																						<children>
																							<xpath allchildren="1"/>
																						</children>
																					</template>
																				</children>
																			</tablecol>
																		</children>
																	</tablerow>
																</children>
															</tablebody>
														</children>
													</table>
													<template>
														<match match="address"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties align="left" colspan="2" height="26" width="831"/>
										<children>
											<template>
												<match match="email"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties align="center" colspan="2" height="26" width="831"/>
										<children>
											<template>
												<match match="authorblurb"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<styles font-family="Arial" font-weight="bold"/>
		<match match="email"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Arial" font-weight="bold"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="emphasis"/>
		<children>
			<choice>
				<children>
					<choiceoption>
						<testexpression>
							<xpath value="@role  = &quot;bold&quot;"/>
						</testexpression>
						<children>
							<xpath allchildren="1">
								<styles font-weight="bold"/>
							</xpath>
						</children>
					</choiceoption>
					<choiceoption>
						<testexpression>
							<xpath value="@role  = &quot;strong&quot;"/>
						</testexpression>
						<children>
							<xpath allchildren="1">
								<styles font-weight="bold"/>
							</xpath>
						</children>
					</choiceoption>
					<choiceoption>
						<children>
							<xpath allchildren="1">
								<styles font-style="italic"/>
							</xpath>
						</children>
					</choiceoption>
				</children>
			</choice>
		</children>
	</template>
	<template>
		<styles font-family="Courier New"/>
		<match match="envar"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="epigraph"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="equation"/>
		<children>
			<paragraph>
				<children>
					<template>
						<match match="title"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<template>
						<match match="titleabbrev"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<newline/>
					<template>
						<match match="mediaobject"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<template>
						<match match="graphic"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<newline/>
					<template>
						<match match="alt"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
				</children>
			</paragraph>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<styles font-family="Courier New" white-space="pre"/>
		<match match="errortext"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1">
						<styles font-family="Courier New" white-space="pre"/>
					</xpath>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="example"/>
		<children>
			<newline/>
			<text fixtext="Example:">
				<styles font-family="Times New Roman" font-style="italic"/>
			</text>
			<text fixtext=" "/>
			<template>
				<styles font-family="Times New Roman" font-style="italic"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-family="Times New Roman" font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
			<newline/>
		</children>
	</template>
	<template>
		<match match="fieldsynopsis"/>
		<children>
			<xpath>
				<match match="modifier"/>
			</xpath>
			<template>
				<match match="type"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<xpath>
				<match match="varname"/>
			</xpath>
			<text fixtext=" = "/>
			<xpath>
				<match match="initializer"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="figure"/>
		<children>
			<paragraph>
				<children>
					<template>
						<match match="graphic"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<template>
						<match match="mediaobject"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<newline/>
					<template>
						<styles font-size="x-small" font-weight="bold"/>
						<match match="title"/>
						<children>
							<text fixtext="Figure: ">
								<styles font-size="x-small" font-weight="bold"/>
							</text>
							<xpath allchildren="1">
								<styles font-size="x-small" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-family="Arial Narrow" font-style="oblique"/>
		<match match="filename"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Arial Narrow" font-style="oblique"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-style="italic"/>
		<match match="firstterm"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="footnote"/>
		<children>
			<table>
				<properties bgcolor="silver"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<xpath allchildren="1"/>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
		</children>
	</template>
	<template>
		<styles font-style="italic"/>
		<match match="foreignphrase"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="formalpara"/>
		<children>
			<paragraph>
				<children>
					<template>
						<styles font-size="larger" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="larger" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="funcparams"/>
		<children>
			<text fixtext="("/>
			<xpath allchildren="1"/>
			<text fixtext=")"/>
		</children>
	</template>
	<template>
		<styles font-weight="bold"/>
		<match match="function"/>
		<children>
			<xpath allchildren="1">
				<styles font-weight="bold"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="glossaryinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="glossdef"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="glossdiv"/>
		<children>
			<paragraph>
				<children>
					<template>
						<styles font-size="large" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="large" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="glossentry"/>
		<children>
			<paragraph>
				<children>
					<table>
						<properties width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="glossterm"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol/>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<children>
													<template>
														<match match="glossdef"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<children>
													<xpath restofcontents="1"/>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="glosslist"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-size="large"/>
		<match match="glossterm"/>
		<children>
			<xpath allchildren="1">
				<styles font-size="large"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="graphic"/>
		<children>
			<image>
				<properties border="0"/>
				<imagesource>
					<xpath value="@fileref"/>
				</imagesource>
			</image>
		</children>
	</template>
	<template>
		<match match="group"/>
		<children>
			<text fixtext="["/>
			<xpath allchildren="1"/>
			<text fixtext="]"/>
		</children>
	</template>
	<template>
		<styles font-style="italic" font-weight="bold"/>
		<match match="guibutton"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic" font-weight="bold"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-style="italic" font-weight="bold"/>
		<match match="guilabel"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic" font-weight="bold"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-style="italic" font-weight="bold"/>
		<match match="guimenu"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic" font-weight="bold"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-style="italic"/>
		<match match="guimenuitem"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-style="italic"/>
		<match match="guisubmenu"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="highlights"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="imagedata"/>
		<children>
			<image>
				<properties border="0"/>
				<imagesource>
					<xpath value="@fileref"/>
				</imagesource>
			</image>
		</children>
	</template>
	<template>
		<match match="important"/>
		<children>
			<paragraph>
				<children>
					<text fixtext="IMPORTANT: ">
						<styles font-family="Arial" font-weight="bold"/>
					</text>
					<template>
						<styles font-weight="bold" text-transform="uppercase"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-weight="bold" text-transform="uppercase"/>
							</xpath>
						</children>
					</template>
					<newline/>
				</children>
			</paragraph>
			<xpath restofcontents="1">
				<styles margin-left="1.5cm" margin-right="1.5cm"/>
			</xpath>
			<newline/>
		</children>
	</template>
	<template>
		<match match="index"/>
		<children>
			<paragraph>
				<children>
					<template>
						<match match="title"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="indexdiv"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="indexentry"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="indexinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="x-large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="x-large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic" font-weight="bold"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<properties rowspan="3" width="71"/>
												<children>
													<text fixtext="Author:"/>
												</children>
											</tablecol>
											<tablecol>
												<properties width="888"/>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<properties width="346"/>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<properties width="205"/>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<properties width="205"/>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<properties width="205"/>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<properties colspan="2" width="462"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<properties align="center" colspan="2" width="462"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<properties rowspan="3"/>
												<children>
													<text fixtext="Editor:"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<properties align="left" valign="top"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<properties align="center"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="indexterm"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
					<text fixtext="&gt;"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="informalequation"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="informalexample"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="informalfigure"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="initializer"/>
		<children>
			<xpath allchildren="1"/>
			<text fixtext=";"/>
		</children>
	</template>
	<template>
		<match match="inlineequation"/>
		<children>
			<template>
				<match match="alt"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<template>
				<match match="graphic"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<template>
				<match match="inlinemediaobject"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
		</children>
	</template>
	<template>
		<match match="inlinegraphic"/>
		<children>
			<image>
				<properties border="0"/>
				<imagesource>
					<xpath value="@fileref"/>
				</imagesource>
			</image>
		</children>
	</template>
	<template>
		<match match="itemizedlist"/>
		<children>
			<template>
				<styles font-size="medium" font-weight="bold"/>
				<match match="title"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1">
								<styles font-size="medium" font-weight="bold"/>
							</xpath>
						</children>
					</paragraph>
				</children>
			</template>
			<template>
				<styles font-weight="bold"/>
				<match match="titleabbrev"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1">
								<styles font-weight="bold"/>
							</xpath>
						</children>
					</paragraph>
				</children>
			</template>
			<template>
				<match match="listitem"/>
				<children>
					<list dynamic="1">
						<styles margin-bottom="0" margin-top="0" marginBottom="0" marginTop="0"/>
						<children>
							<listrow>
								<children>
									<xpath allchildren="1"/>
									<newline/>
								</children>
							</listrow>
						</children>
					</list>
				</children>
			</template>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="itermset"/>
		<children>
			<text fixtext="&lt;"/>
			<xpath allchildren="1"/>
			<text fixtext="&gt;"/>
		</children>
	</template>
	<template>
		<styles font-weight="bold" text-transform="capitalize"/>
		<match match="keycap"/>
		<children>
			<xpath allchildren="1">
				<styles font-weight="bold" text-transform="capitalize"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-family="@Arial Unicode MS"/>
		<match match="keycombo"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="@Arial Unicode MS"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="legalnotice"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-family="Arial Black" font-size="small" font-style="italic"/>
		<match match="lineannotation"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Arial Black" font-size="small" font-style="italic"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="link"/>
		<children>
			<link>
				<hyperlink>
					<xpath value="@linkend"/>
				</hyperlink>
				<children>
					<xpath allchildren="1"/>
				</children>
			</link>
		</children>
	</template>
	<template>
		<styles font-family="Courier New" font-size="x-small"/>
		<match match="literal"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New" font-size="x-small"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles white-space="pre"/>
		<match match="literallayout"/>
		<children>
			<xpath allchildren="1">
				<styles white-space="pre"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="lot"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="lotentry"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="manvolnum"/>
		<children>
			<xpath allchildren="1"/>
			<text fixtext=")"/>
		</children>
	</template>
	<template>
		<styles font-style="italic"/>
		<match match="medialabel"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="mediaobject"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="menuchoice"/>
		<children>
			<template>
				<styles font-style="italic" font-weight="bold"/>
				<match match="guimenu"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic" font-weight="bold"/>
					</xpath>
					<text fixtext=" - ">
						<styles font-style="italic" font-weight="bold"/>
					</text>
				</children>
			</template>
			<template>
				<styles font-style="italic" font-weight="bold"/>
				<match match="guisubmenu"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic" font-weight="bold"/>
					</xpath>
					<text fixtext=" - ">
						<styles font-style="italic" font-weight="bold"/>
					</text>
				</children>
			</template>
			<template>
				<styles font-style="italic" font-weight="bold"/>
				<match match="guimenuitem"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<template>
				<match match="shortcut"/>
				<children>
					<text fixtext="("/>
					<xpath allchildren="1"/>
					<text fixtext=")"/>
				</children>
			</template>
		</children>
	</template>
	<template>
		<styles font-family="Courier New" font-weight="bold"/>
		<match match="methodname"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New" font-weight="normal"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="methodparam"/>
		<children>
			<template>
				<match match="type"/>
				<children>
					<xpath allchildren="1"/>
					<text fixtext=" "/>
				</children>
			</template>
			<template>
				<match match="parameter"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
		</children>
	</template>
	<template>
		<match match="methodsynopsis"/>
		<children>
			<template>
				<match match="modifier"/>
				<children>
					<xpath allchildren="1">
						<styles font-family="Courier New"/>
					</xpath>
				</children>
			</template>
			<template>
				<match match="void"/>
				<children>
					<choice>
						<children>
							<choiceoption>
								<testexpression>
									<xpath value="position()  =  last()"/>
								</testexpression>
							</choiceoption>
							<choiceoption>
								<children>
									<text fixtext="void"/>
								</children>
							</choiceoption>
						</children>
					</choice>
				</children>
			</template>
			<template>
				<match match="type"/>
				<children>
					<xpath allchildren="1">
						<styles font-family="Courier New"/>
					</xpath>
				</children>
			</template>
			<template>
				<match match="methodname"/>
				<children>
					<xpath allchildren="1">
						<styles font-family="Courier New"/>
					</xpath>
				</children>
			</template>
			<text fixtext="("/>
			<xpath>
				<match match="methodparam"/>
			</xpath>
			<text fixtext=")"/>
			<template>
				<match match="void"/>
				<children>
					<choice>
						<children>
							<choiceoption>
								<testexpression>
									<xpath value="position()=1"/>
								</testexpression>
								<children>
									<text fixtext="();"/>
								</children>
							</choiceoption>
							<choiceoption/>
						</children>
					</choice>
				</children>
			</template>
			<template>
				<match match="exceptionname"/>
				<children>
					<xpath allchildren="1">
						<styles font-family="Courier New"/>
					</xpath>
				</children>
			</template>
		</children>
	</template>
	<template>
		<styles font-family="Courier New"/>
		<match match="modifier"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New"/>
			</xpath>
			<text fixtext=" "/>
		</children>
	</template>
	<template>
		<match match="msg"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="msgentry"/>
		<children>
			<paragraph>
				<children>
					<template>
						<match match="msg"/>
						<children>
							<paragraph>
								<children>
									<xpath allchildren="1"/>
								</children>
							</paragraph>
						</children>
					</template>
					<template>
						<match match="msginfo"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<template>
						<match match="msgexplan"/>
						<children>
							<paragraph>
								<children>
									<xpath allchildren="1"/>
								</children>
							</paragraph>
						</children>
					</template>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="msginfo"/>
		<children>
			<table>
				<properties border="0"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<text fixtext="LEVEL:"/>
											<template>
												<match match="msglevel"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<text fixtext="ORIGIN: "/>
											<template>
												<match match="msgorig"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<text fixtext="AUDIENCE: "/>
											<template>
												<match match="msgaud"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
		</children>
	</template>
	<template>
		<match match="msgset"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles vertical-Align="top"/>
		<match match="note"/>
		<children>
			<template>
				<styles vertical-Align="top"/>
				<match match="title"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1">
								<styles font-weight="bold" margin-left="1cm" vertical-Align="top"/>
							</xpath>
						</children>
					</paragraph>
				</children>
			</template>
			<paragraph>
				<children>
					<table>
						<properties width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<properties width="34"/>
											</tablecol>
											<tablecol>
												<children>
													<xpath restofcontents="1"/>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="objectinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<properties rowspan="3"/>
												<children>
													<text fixtext="Author:"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<properties colspan="2" valign="top"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<properties align="center"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<properties rowspan="3"/>
												<children>
													<text fixtext="Editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<properties valign="top"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<properties align="center" valign="top"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<styles font-family="Courier New"/>
		<match match="option"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="optional"/>
		<children>
			<text fixtext="["/>
			<xpath allchildren="1"/>
			<text fixtext="]"/>
		</children>
	</template>
	<template>
		<match match="orderedlist"/>
		<children>
			<template>
				<styles font-size="medium" font-weight="bold"/>
				<match match="title"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1">
								<styles font-size="medium" font-weight="bold"/>
							</xpath>
						</children>
					</paragraph>
				</children>
			</template>
			<template>
				<styles font-weight="bold"/>
				<match match="titleabbrev"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1">
								<styles font-weight="bold"/>
							</xpath>
						</children>
					</paragraph>
				</children>
			</template>
			<choice>
				<children>
					<choiceoption>
						<testexpression>
							<xpath value="parent::listitem/../parent::listitem/../parent::listitem/../parent::listitem"/>
						</testexpression>
						<children>
							<choice>
								<children>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;loweralpha&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="a"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;upperalpha&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="A"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;upperroman&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="I"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;arabic&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="1"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="i"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
								</children>
							</choice>
						</children>
					</choiceoption>
					<choiceoption>
						<testexpression>
							<xpath value="parent::listitem/../parent::listitem/../parent::listitem"/>
						</testexpression>
						<children>
							<choice>
								<children>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;upperalpha&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="A"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;lowerroman&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="i"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;upperroman&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="I"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;arabic&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="1"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="a"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
								</children>
							</choice>
						</children>
					</choiceoption>
					<choiceoption>
						<testexpression>
							<xpath value="parent::listitem/../parent::listitem"/>
						</testexpression>
						<children>
							<choice>
								<children>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;loweralpha&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="a"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;upperalpha&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="A"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;lowerroman&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="i"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;arabic&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="1"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="I"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
								</children>
							</choice>
						</children>
					</choiceoption>
					<choiceoption>
						<testexpression>
							<xpath value="parent::listitem"/>
						</testexpression>
						<children>
							<choice>
								<children>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;loweralpha&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="a"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;lowerroman&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="i"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;upperroman&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="I"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;arabic&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="1"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="A"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
								</children>
							</choice>
						</children>
					</choiceoption>
					<choiceoption>
						<children>
							<choice>
								<children>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;loweralpha&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="a"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;upperalpha&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="A"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;lowerroman&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="i"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<testexpression>
											<xpath value="@numeration = &apos;upperroman&apos;"/>
										</testexpression>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="I"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
									<choiceoption>
										<children>
											<template>
												<match match="listitem"/>
												<children>
													<list dynamic="1" ordered="1">
														<styles margin-bottom="0" margin-top="0"/>
														<properties start="1" type="1"/>
														<children>
															<listrow>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</listrow>
														</children>
													</list>
												</children>
											</template>
										</children>
									</choiceoption>
								</children>
							</choice>
						</children>
					</choiceoption>
				</children>
			</choice>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="othercredit"/>
		<children>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties height="146" width="869"/>
										<children>
											<template>
												<match match="personname"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<newline/>
											<template>
												<match match="honorific"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<template>
												<match match="firstname"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<template>
												<match match="surname"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<template>
												<match match="lineage"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<newline/>
											<template>
												<match match="othername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<properties height="146"/>
										<children>
											<template>
												<match match="affiliation"/>
												<children>
													<template>
														<match match="shortaffil"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<table>
														<properties border="0"/>
														<children>
															<tablebody>
																<children>
																	<tablerow>
																		<children>
																			<tablecol>
																				<children>
																					<template>
																						<match match="jobtitle"/>
																						<children>
																							<xpath allchildren="1"/>
																						</children>
																					</template>
																				</children>
																			</tablecol>
																		</children>
																	</tablerow>
																	<tablerow>
																		<children>
																			<tablecol>
																				<children>
																					<template>
																						<match match="orgname"/>
																						<children>
																							<xpath allchildren="1"/>
																						</children>
																					</template>
																				</children>
																			</tablecol>
																		</children>
																	</tablerow>
																	<tablerow>
																		<children>
																			<tablecol>
																				<children>
																					<template>
																						<match match="orgdiv"/>
																						<children>
																							<xpath allchildren="1"/>
																						</children>
																					</template>
																				</children>
																			</tablecol>
																		</children>
																	</tablerow>
																</children>
															</tablebody>
														</children>
													</table>
													<xpath restofcontents="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties align="center" colspan="2" width="869"/>
										<children>
											<template>
												<match match="authorblurb"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
		</children>
	</template>
	<template>
		<match match="para"/>
		<children>
			<paragraph paragraphtag="p">
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-family="Courier New" font-style="italic" font-weight="bold"/>
		<match match="parameter"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New" font-style="italic" font-weight="bold"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="part"/>
		<children>
			<paragraph>
				<children>
					<template>
						<styles font-size="large" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="large" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
					<newline/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="partinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author: "/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties valign="top"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<newline/>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Editor: "/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="partintro"/>
		<children>
			<paragraph>
				<children>
					<template>
						<styles font-size="large" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="large" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="preface"/>
		<children>
			<paragraph>
				<children>
					<template>
						<styles font-size="large" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="large" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="prefaceinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="primary"/>
		<children>
			<text fixtext="&lt;"/>
			<xpath allchildren="1"/>
			<text fixtext="&gt;"/>
		</children>
	</template>
	<template>
		<match match="printhistory"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="procedure"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-family="Courier New" font-size="x-small" white-space="pre"/>
		<match match="programlisting"/>
		<children>
			<paragraph paragraphtag="pre">
				<children>
					<xpath allchildren="1">
						<styles font-family="Courier New" font-size="x-small" white-space="pre"/>
					</xpath>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-family="Courier New"/>
		<match match="prompt"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="qandadiv"/>
		<children>
			<paragraph>
				<children>
					<template>
						<styles font-size="medium" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="medium" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="question"/>
		<children>
			<text fixtext="Q: ">
				<styles font-size="medium" font-weight="bold"/>
			</text>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="quote"/>
		<children>
			<text fixtext="“"/>
			<xpath allchildren="1"/>
			<text fixtext="”"/>
		</children>
	</template>
	<template>
		<match match="refentry"/>
		<children>
			<newline/>
			<text fixtext="NAME">
				<styles font-size="large" font-weight="bold"/>
			</text>
			<newline/>
			<paragraph>
				<children>
					<template>
						<match match="refnamediv"/>
						<children>
							<template>
								<match match="refname"/>
								<children>
									<xpath allchildren="1"/>
									<choice>
										<children>
											<choiceoption>
												<testexpression>
													<xpath value="count( ../refname ) &gt; 1  and  count( ../refname ) != position()"/>
												</testexpression>
												<children>
													<text fixtext=","/>
												</children>
											</choiceoption>
											<choiceoption/>
										</children>
									</choice>
								</children>
							</template>
							<text fixtext="- "/>
							<template>
								<match match="refpurpose"/>
								<children>
									<xpath allchildren="1"/>
								</children>
							</template>
							<newline/>
							<xpath restofcontents="1"/>
						</children>
					</template>
					<newline/>
					<template>
						<match match="refsynopsisdiv"/>
						<children>
							<paragraph paragraphtag="div">
								<children>
									<xpath allchildren="1"/>
								</children>
							</paragraph>
						</children>
					</template>
					<template>
						<match match="refsect1"/>
						<children>
							<template>
								<styles font-size="large" font-weight="bold"/>
								<match match="title"/>
								<children>
									<xpath allchildren="1">
										<styles font-size="large" font-weight="bold"/>
									</xpath>
								</children>
							</template>
							<paragraph>
								<children>
									<xpath restofcontents="1"/>
								</children>
							</paragraph>
						</children>
					</template>
					<newline/>
					<template>
						<match match="refsection"/>
						<children>
							<template>
								<styles font-size="large" font-weight="bold"/>
								<match match="title"/>
								<children>
									<xpath allchildren="1">
										<styles font-size="large" font-weight="bold"/>
									</xpath>
								</children>
							</template>
							<newline/>
							<xpath restofcontents="1"/>
						</children>
					</template>
					<newline/>
				</children>
			</paragraph>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="refentryinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" valign="center"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol/>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<styles font-size="large" font-weight="bold"/>
		<match match="refentrytitle"/>
		<children>
			<xpath allchildren="1">
				<styles font-size="large" font-weight="bold"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="reference"/>
		<children>
			<newline/>
			<template>
				<match match="referenceinfo"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
			<newline/>
		</children>
	</template>
	<template>
		<match match="referenceinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="refmeta"/>
	</template>
	<template>
		<styles font-weight="bold"/>
		<match match="refname"/>
		<children>
			<xpath allchildren="1">
				<styles font-weight="bold"/>
			</xpath>
			<choice>
				<children>
					<choiceoption>
						<testexpression>
							<xpath value="position() =1"/>
						</testexpression>
						<children>
							<text fixtext="1"/>
						</children>
					</choiceoption>
				</children>
			</choice>
		</children>
	</template>
	<template>
		<match match="refnamediv"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="refpurpose"/>
		<children>
			<text fixtext=" "/>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="refsect1info"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="refsect2info"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="refsect3info"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="refsection"/>
		<children>
			<newline/>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<paragraph>
				<children>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="refsectioninfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<newline/>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="refsynopsisdiv"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="refsynopsisdivinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<newline/>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<styles font-style="italic"/>
		<match match="remark"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-family="Courier New" font-size="x-small" font-style="oblique"/>
		<match match="replaceable"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New" font-size="x-small" font-style="oblique"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-style="italic"/>
		<match match="revdescription"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="revhistory"/>
		<children>
			<paragraph>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Revision History">
														<styles font-weight="bold"/>
													</text>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="revision"/>
														<children>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="revnumber"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																					<tablecol>
																						<children>
																							<template>
																								<match match="date"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																					<tablecol>
																						<children>
																							<template>
																								<match match="authorinitials"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<properties colspan="3"/>
																						<children>
																							<template>
																								<match match="revremark"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
														</children>
													</template>
													<xpath restofcontents="1"/>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="revision"/>
		<children>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="revnumber"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="date"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="authorinitials"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties colspan="3"/>
										<children>
											<template>
												<match match="revremark"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
		</children>
	</template>
	<template>
		<match match="revnumber"/>
		<children>
			<text fixtext="Revision  "/>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="sbr"/>
		<children>
			<newline/>
		</children>
	</template>
	<template>
		<styles font-family="Courier New" font-size="smaller"/>
		<match match="screen"/>
		<children>
			<table>
				<properties border="0" cellspacing="4" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="16"/>
									</tablecol>
									<tablecol>
										<children>
											<xpath allchildren="1">
												<styles font-family="Courier New" font-size="smaller"/>
											</xpath>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
		</children>
	</template>
	<template>
		<match match="screeninfo"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="sect1"/>
		<children>
			<paragraph>
				<children>
					<template>
						<match match="sect1info"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<newline/>
					<template>
						<styles font-size="x-large" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="x-large" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="sect1info"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="sect2"/>
		<children>
			<newline/>
			<template>
				<match match="sect2info"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<paragraph>
				<children>
					<template>
						<styles font-size="large" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="large" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="sect2info"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="sect3"/>
		<children>
			<paragraph>
				<children>
					<template>
						<match match="sect3info"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<newline/>
					<template>
						<styles font-size="medium" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="medium" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="sect3info"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="sect4"/>
		<children>
			<paragraph>
				<children>
					<template>
						<match match="sect4info"/>
						<children>
							<xpath allchildren="1"/>
						</children>
					</template>
					<newline/>
					<template>
						<styles font-size="small" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="small" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="sect4info"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="sect5"/>
		<children>
			<newline/>
			<template>
				<match match="sect5info"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<paragraph>
				<children>
					<template>
						<styles font-size="xx-small" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="xx-small" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="sect5info"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="section"/>
		<children>
			<newline/>
			<template>
				<match match="sectioninfo"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<choice>
				<children>
					<choiceoption>
						<testexpression>
							<xpath value="../../../../../../section"/>
						</testexpression>
						<children>
							<template>
								<match match="title"/>
								<children>
									<paragraph paragraphtag="h6">
										<children>
											<xpath allchildren="1"/>
										</children>
									</paragraph>
								</children>
							</template>
						</children>
					</choiceoption>
					<choiceoption>
						<testexpression>
							<xpath value="../../../../section"/>
						</testexpression>
						<children>
							<template>
								<match match="title"/>
								<children>
									<paragraph paragraphtag="h5">
										<children>
											<xpath allchildren="1"/>
										</children>
									</paragraph>
								</children>
							</template>
						</children>
					</choiceoption>
					<choiceoption>
						<testexpression>
							<xpath value="../../../section"/>
						</testexpression>
						<children>
							<template>
								<match match="title"/>
								<children>
									<paragraph paragraphtag="h4">
										<children>
											<xpath allchildren="1"/>
										</children>
									</paragraph>
								</children>
							</template>
						</children>
					</choiceoption>
					<choiceoption>
						<testexpression>
							<xpath value="../../section"/>
						</testexpression>
						<children>
							<template>
								<match match="title"/>
								<children>
									<paragraph paragraphtag="h3">
										<children>
											<xpath allchildren="1"/>
										</children>
									</paragraph>
								</children>
							</template>
						</children>
					</choiceoption>
					<choiceoption>
						<testexpression>
							<xpath value="../section"/>
						</testexpression>
						<children>
							<template>
								<match match="title"/>
								<children>
									<paragraph paragraphtag="h2">
										<children>
											<xpath allchildren="1"/>
										</children>
									</paragraph>
								</children>
							</template>
						</children>
					</choiceoption>
				</children>
			</choice>
			<newline/>
			<xpath restofcontents="1"/>
			<newline/>
			<xpath>
				<match match="section"/>
			</xpath>
			<newline/>
		</children>
	</template>
	<template>
		<match match="sectioninfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="seeie"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="seglistitem"/>
		<children>
			<newline/>
			<template>
				<match match="seg"/>
				<children>
					<table dynamic="1" topdown="0">
						<properties border="0"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol dynamic="1">
												<properties align="center" width="100"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
		</children>
	</template>
	<template>
		<match match="segmentedlist"/>
		<children>
			<paragraph>
				<children>
					<template>
						<styles font-size="large" font-weight="bold"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-size="large" font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<template>
						<styles font-weight="bold"/>
						<match match="titleabbrev"/>
						<children>
							<xpath allchildren="1">
								<styles font-weight="bold"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<template>
						<match match="segtitle"/>
						<children>
							<table dynamic="1" topdown="0">
								<properties border="0"/>
								<children>
									<tablebody>
										<children>
											<tablerow>
												<children>
													<tablecol dynamic="1">
														<properties align="center" width="99"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</tablecol>
												</children>
											</tablerow>
										</children>
									</tablebody>
								</children>
							</table>
						</children>
					</template>
				</children>
			</paragraph>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<styles font-weight="bold"/>
		<match match="segtitle"/>
		<children>
			<xpath allchildren="1">
				<styles font-weight="bold"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="setindexinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<match match="setinfo"/>
		<children>
			<table>
				<properties width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties align="right"/>
										<children>
											<template>
												<match match="graphic"/>
												<children>
													<image>
														<properties border="0"/>
														<imagesource>
															<xpath value="@fileref"/>
														</imagesource>
													</image>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<template>
				<styles font-size="large" font-weight="bold"/>
				<match match="title"/>
				<children>
					<xpath allchildren="1">
						<styles font-size="large" font-weight="bold"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles font-style="italic"/>
				<match match="subtitle"/>
				<children>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="author"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="Author"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
					<xpath restofcontents="1"/>
				</children>
			</template>
			<newline/>
			<template>
				<match match="authorgroup"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="author"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="editor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="collab"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="corpauthor"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<template>
														<match match="othercredit"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<template>
				<match match="editor"/>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<text fixtext="editor"/>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="personname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="honorific"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="firstname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="surname"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<template>
														<match match="lineage"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<newline/>
													<template>
														<match match="othername"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<children>
													<template>
														<match match="affiliation"/>
														<children>
															<template>
																<match match="shortaffil"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
															<table>
																<properties border="0" width="100%"/>
																<children>
																	<tablebody>
																		<children>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="jobtitle"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgdiv"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																			<tablerow>
																				<children>
																					<tablecol>
																						<children>
																							<template>
																								<match match="orgname"/>
																								<children>
																									<xpath allchildren="1"/>
																								</children>
																							</template>
																						</children>
																					</tablecol>
																				</children>
																			</tablerow>
																		</children>
																	</tablebody>
																</children>
															</table>
															<template>
																<match match="address"/>
																<children>
																	<xpath allchildren="1"/>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties colspan="2"/>
												<children>
													<template>
														<match match="email"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol/>
											<tablecol>
												<properties align="center" colspan="2"/>
												<children>
													<template>
														<match match="authorblurb"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<text fixtext="ISBN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="isbn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<text fixtext="ISSN #:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="issn"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<text fixtext="Copyright:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="copyright"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<text fixtext="Publisher:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publisher"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
							<tablerow>
								<children>
									<tablecol>
										<properties width="203"/>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<text fixtext="Publisher Name:"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="publishername"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="abstract"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<table>
				<properties border="0" width="100%"/>
				<children>
					<tablebody>
						<children>
							<tablerow>
								<children>
									<tablecol>
										<children>
											<template>
												<match match="keywordset"/>
												<children>
													<text fixtext="Keywords: "/>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="subjectset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
									<tablecol>
										<children>
											<template>
												<match match="biblioset"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</tablecol>
								</children>
							</tablerow>
						</children>
					</tablebody>
				</children>
			</table>
			<newline/>
			<template>
				<match match="legalnotice"/>
				<children>
					<paragraph>
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
			<newline/>
			<template>
				<match match="revhistory"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<newline/>
			<xpath restofcontents="1"/>
		</children>
	</template>
	<template>
		<styles font-family="Arial Narrow"/>
		<match match="sgmltag"/>
		<children>
			<text fixtext="&lt;">
				<styles font-family="Arial Narrow" font-weight="bold"/>
			</text>
			<xpath allchildren="1">
				<styles font-family="Arial Narrow" font-weight="bold"/>
			</xpath>
			<text fixtext="&gt;">
				<styles font-family="Arial Narrow" font-weight="bold"/>
			</text>
		</children>
	</template>
	<template>
		<styles font-weight="bold"/>
		<match match="shortcut"/>
		<children>
			<text fixtext="("/>
			<xpath allchildren="1">
				<styles font-weight="bold"/>
			</xpath>
			<text fixtext=")"/>
		</children>
	</template>
	<template>
		<match match="sidebar"/>
		<children>
			<paragraph>
				<children>
					<table>
						<properties border="0" width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<properties height="63"/>
												<children>
													<text fixtext="SIDEBAR:">
														<styles font-family="Arial" font-weight="bold"/>
													</text>
													<text fixtext=" "/>
													<xpath allchildren="1">
														<styles margin-left="1cm"/>
													</xpath>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="simpara"/>
		<children>
			<paragraph paragraphtag="p">
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="simplelist"/>
		<children>
			<newline/>
			<template>
				<match match="member"/>
				<children>
					<list dynamic="1">
						<styles margin-bottom="0" margin-top="0" marginBottom="0" marginTop="0"/>
						<children>
							<listrow>
								<children>
									<xpath allchildren="1"/>
								</children>
							</listrow>
						</children>
					</list>
				</children>
			</template>
			<newline/>
		</children>
	</template>
	<template>
		<match match="simplemsgentry"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="simplesect"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="step"/>
		<children>
			<list dynamic="1">
				<styles margin-bottom="0" margin-top="0" marginBottom="0" marginTop="0"/>
				<children>
					<listrow>
						<children>
							<xpath allchildren="1"/>
						</children>
					</listrow>
				</children>
			</list>
		</children>
	</template>
	<template>
		<styles font-style="italic"/>
		<match match="structfield"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-size="xx-small" vertical-Align="sub"/>
		<match match="subscript"/>
		<children>
			<xpath allchildren="1">
				<styles font-size="xx-small" vertical-Align="sub"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles text-indent="2cm"/>
		<match match="substeps"/>
		<children>
			<xpath allchildren="1">
				<styles text-indent="2cm"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-size="medium" font-style="italic" font-weight="bold"/>
		<match match="subtitle"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1">
						<styles font-size="medium" font-style="italic" font-weight="bold"/>
					</xpath>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-size="xx-small" vertical-Align="super"/>
		<match match="superscript"/>
		<children>
			<xpath allchildren="1">
				<styles font-size="xx-small" vertical-Align="super"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="synopfragment"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="term"/>
		<children>
			<xpath allchildren="1"/>
			<choice>
				<children>
					<choiceoption>
						<testexpression>
							<xpath value="count( ../term ) &gt;1  and  count( ../term ) !=  position()"/>
						</testexpression>
						<children>
							<text fixtext=", "/>
						</children>
					</choiceoption>
					<choiceoption/>
				</children>
			</choice>
		</children>
	</template>
	<template>
		<match match="textdata"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-weight="bold"/>
		<match match="tfoot"/>
		<children>
			<xpath allchildren="1">
				<styles font-weight="bold"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles font-weight="bold"/>
		<match match="thead"/>
		<children>
			<xpath allchildren="1">
				<styles font-weight="bold"/>
			</xpath>
		</children>
	</template>
	<template>
		<styles margin-left="1cm" margin-right="1cm"/>
		<match match="tip"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1">
						<styles margin-left="1cm" margin-right="1cm"/>
					</xpath>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="title"/>
		<children>
			<paragraph paragraphtag="h2">
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="titleabbrev"/>
		<children>
			<text fixtext="["/>
			<xpath allchildren="1"/>
			<text fixtext="]"/>
		</children>
	</template>
	<template>
		<match match="tocback"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="tocchap"/>
		<children>
			<newline/>
			<template>
				<match match="tocentry"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
			<template>
				<match match="toclevel1"/>
				<children>
					<newline/>
					<template>
						<styles margin-left=".5cm"/>
						<match match="tocentry"/>
						<children>
							<xpath allchildren="1">
								<styles margin-left=".5cm"/>
							</xpath>
						</children>
					</template>
					<template>
						<match match="toclevel2"/>
						<children>
							<newline/>
							<template>
								<styles margin-left="1cm"/>
								<match match="tocentry"/>
								<children>
									<xpath allchildren="1">
										<styles margin-left="1cm"/>
									</xpath>
								</children>
							</template>
							<template>
								<match match="toclevel3"/>
								<children>
									<newline/>
									<template>
										<styles margin-left="1.5cm"/>
										<match match="tocentry"/>
										<children>
											<xpath allchildren="1">
												<styles margin-left="1.5cm"/>
											</xpath>
										</children>
									</template>
									<template>
										<match match="toclevel4"/>
										<children>
											<newline/>
											<template>
												<styles margin-left="2.0cm"/>
												<match match="tocentry"/>
												<children>
													<xpath allchildren="1">
														<styles margin-left="2.0cm"/>
													</xpath>
												</children>
											</template>
											<template>
												<match match="toclevel5"/>
												<children>
													<newline/>
													<template>
														<styles margin-left="2.5cm"/>
														<match match="tocentry"/>
														<children>
															<xpath allchildren="1">
																<styles margin-left="2.5cm"/>
															</xpath>
														</children>
													</template>
													<newline/>
												</children>
											</template>
										</children>
									</template>
								</children>
							</template>
						</children>
					</template>
				</children>
			</template>
		</children>
	</template>
	<template>
		<match match="tocentry"/>
		<children>
			<newline/>
			<xpath allchildren="1"/>
			<newline/>
		</children>
	</template>
	<template>
		<match match="tocfront"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles margin-left=".5cm"/>
		<match match="toclevel1"/>
		<children>
			<template>
				<styles margin-left=".5cm"/>
				<match match="tocentry"/>
				<children>
					<xpath allchildren="1">
						<styles margin-left=".5cm"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles margin-left=".5cm"/>
				<match match="toclevel2"/>
				<children>
					<xpath allchildren="1">
						<styles margin-left=".5cm"/>
					</xpath>
				</children>
			</template>
		</children>
	</template>
	<template>
		<match match="toclevel2"/>
		<children>
			<template>
				<styles margin-left="1cm"/>
				<match match="tocentry"/>
				<children>
					<xpath allchildren="1">
						<styles margin-left="1cm"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles margin-left="1cm"/>
				<match match="toclevel3"/>
				<children>
					<xpath allchildren="1">
						<styles margin-left="1cm"/>
					</xpath>
				</children>
			</template>
		</children>
	</template>
	<template>
		<match match="toclevel3"/>
		<children>
			<template>
				<styles margin-left="1cm"/>
				<match match="tocentry"/>
				<children>
					<xpath allchildren="1">
						<styles margin-left="1cm"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<match match="toclevel4"/>
				<children>
					<xpath allchildren="1"/>
				</children>
			</template>
		</children>
	</template>
	<template>
		<styles margin-left="2.5cm"/>
		<match match="toclevel4"/>
		<children>
			<template>
				<styles margin-left="3cm"/>
				<match match="tocentry"/>
				<children>
					<xpath allchildren="1">
						<styles margin-left="3cm"/>
					</xpath>
				</children>
			</template>
			<newline/>
			<template>
				<styles margin-left="4cm"/>
				<match match="toclevel5"/>
				<children>
					<newline/>
					<xpath allchildren="1">
						<styles margin-left="4cm"/>
					</xpath>
				</children>
			</template>
		</children>
	</template>
	<template>
		<styles text-indent="4cm"/>
		<match match="toclevel5"/>
		<children>
			<xpath allchildren="1">
				<styles text-indent="4cm"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="tocpart"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-size="medium"/>
		<match match="token"/>
		<children>
			<xpath allchildren="1">
				<styles font-size="medium"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="ulink"/>
		<children>
			<link>
				<hyperlink>
					<xpath value="@url"/>
				</hyperlink>
				<children>
					<xpath allchildren="1"/>
				</children>
			</link>
		</children>
	</template>
	<template>
		<styles font-family="Courier New" font-weight="bold"/>
		<match match="userinput"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New" font-weight="bold"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="variablelist"/>
		<children>
			<paragraph>
				<children>
					<xpath allchildren="1"/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="varlistentry"/>
		<children>
			<xpath>
				<match match="term"/>
			</xpath>
			<template>
				<match match="listitem"/>
				<children>
					<paragraph paragraphtag="blockquote">
						<children>
							<xpath allchildren="1"/>
						</children>
					</paragraph>
				</children>
			</template>
		</children>
	</template>
	<template>
		<styles font-family="Courier New"/>
		<match match="varname"/>
		<children>
			<xpath allchildren="1">
				<styles font-family="Courier New"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="videodata"/>
		<children>
			<template>
				<styles font-style="italic"/>
				<match match="@fileref"/>
				<children>
					<text fixtext="(">
						<styles font-style="italic"/>
					</text>
					<xpath allchildren="1">
						<styles font-style="italic"/>
					</xpath>
					<text fixtext=")">
						<styles font-style="italic"/>
					</text>
				</children>
			</template>
		</children>
	</template>
	<template>
		<match match="void"/>
		<children>
			<choice>
				<styles font-family="Courier New"/>
				<children>
					<choiceoption>
						<testexpression>
							<xpath value="position() = last()  and  not( ../methodparam )"/>
						</testexpression>
						<children>
							<text fixtext="("/>
							<xpath allchildren="1"/>
							<text fixtext=");"/>
						</children>
					</choiceoption>
					<choiceoption>
						<testexpression>
							<xpath value="position() != last()  or   not( ../type )"/>
						</testexpression>
						<children>
							<text fixtext="void"/>
						</children>
					</choiceoption>
					<choiceoption>
						<testexpression>
							<xpath value="position()  =  last() and  boolean( ../methodparam )"/>
						</testexpression>
						<children>
							<text fixtext="invalid state of XML">
								<styles color="red" font-family="Arial" font-weight="bold"/>
							</text>
						</children>
					</choiceoption>
					<choiceoption>
						<children>
							<text fixtext="void"/>
						</children>
					</choiceoption>
				</children>
			</choice>
		</children>
	</template>
	<template>
		<match match="warning"/>
		<children>
			<paragraph>
				<children>
					<text fixtext="WARNING:">
						<styles font-weight="bold"/>
					</text>
					<text fixtext=" "/>
					<template>
						<styles font-weight="bold" text-transform="uppercase"/>
						<match match="title"/>
						<children>
							<xpath allchildren="1">
								<styles font-weight="bold" text-transform="uppercase"/>
							</xpath>
						</children>
					</template>
					<newline/>
					<xpath restofcontents="1">
						<styles margin-left="1cm" margin-right="1cm"/>
					</xpath>
					<newline/>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<styles font-style="italic"/>
		<match match="wordasword"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic"/>
			</xpath>
		</children>
	</template>
	<template>
		<editorproperties adding="mandatory" editable="1" markupmode="large"/>
		<match match="xref"/>
		<children>
			<link>
				<hyperlink>
					<fixtext value="#"/>
					<xpath value="@linkend"/>
				</hyperlink>
				<children>
					<text fixtext="&lt;Xref to "/>
				</children>
			</link>
			<template>
				<match match="@linkend"/>
				<children>
					<link>
						<hyperlink>
							<xpath value="@linkend"/>
						</hyperlink>
						<children>
							<xpath allchildren="1"/>
						</children>
					</link>
				</children>
			</template>
			<link>
				<hyperlink>
					<xpath value="@linkend"/>
				</hyperlink>
				<children>
					<text fixtext="&gt;"/>
				</children>
			</link>
		</children>
	</template>
	<template>
		<match match="year"/>
		<children>
			<text fixtext=" "/>
			<xpath allchildren="1"/>
			<text fixtext=" "/>
		</children>
	</template>
	<pagelayout>
		<properties pagemultiplepages="0" pagenumberingformat="1" pagenumberingstartat="1" paperheight="11in" papermarginbottom="0.79in" papermarginleft="0.6in" papermarginright="0.6in" papermargintop="0.79in" paperwidth="8.5in"/>
	</pagelayout>
</structure>
